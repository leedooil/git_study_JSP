package sec01.ex01;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

//@WebServlet("/upload.do")
public class FileUpload extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출");
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드 호출");
		doHandle(request, response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String encoding = "utf-8";
		//업로드할 파일 경로를 지정
		File currentDirPath = new File("C:\\file_repo");
		//임시 저장소를 만드어 주는 객체
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//파일 경로를 설정
		factory.setRepository(currentDirPath);
		//최대 업로드 가능한 파일 크기 설정
		factory.setSizeThreshold(1024*1024);
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			//request 객체에서 매개변수를 List로 가져옴
			List items = upload.parseRequest(request);
			for(int i=0; i<items.size(); i++) {
				//파일 업로드창에서 업로드된 항목들을 하나씩 가져옴
				FileItem fileItem = (FileItem) items.get(i);
				//폼 필드면 전송된 매개변수 값을 출력
				if(fileItem.isFormField()) {
					System.out.println(fileItem.getFieldName()+ "=" +fileItem.getString(encoding));
				}else {
					//폼 필드가 아니면 파일 업로드 기능을 수행
					System.out.println("매개변수이름:"+fileItem.getFieldName());
					System.out.println("파일이름:"+fileItem.getName());
					System.out.println("파일크기:"+fileItem.getSize()+"bytes");
					if(fileItem.getSize()>0){ //파일용량이 크니까 설정해준 용량만큼 잘라서 업로드하는 과정
						int idx = fileItem.getName().lastIndexOf("\\");
						if(idx==-1) {
							idx = fileItem.getName().lastIndexOf("/");
							//업로드한 파일 이름을 가져옴
							String fileName = fileItem.getName().substring(idx+1);
							//업로드한 파일 이름으로 저장소에 파일을 업로드
							File uploadFile = new File(currentDirPath + "\\" + fileName);
							fileItem.write(uploadFile);
						}
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
