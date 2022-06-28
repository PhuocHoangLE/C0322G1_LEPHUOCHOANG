import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Customer" , urlPatterns = "/a")
public class CustomerServerlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> danhSachKhachHang = new ArrayList<>() ;
        danhSachKhachHang.add(new Customer("Mai Văn Hoàn", "20/08/1983","Hà Nội","https://i.pinimg.com/736x/c0/2f/bc/c02fbcd23651a3d322fc5fe0ec7acc5c.jpg")) ;
        danhSachKhachHang.add(new Customer("Nguyễn Văn Nam", "21/08/1983","Bắc Giang","https://i.pinimg.com/736x/c0/2f/bc/c02fbcd23651a3d322fc5fe0ec7acc5c.jpg")) ;
        danhSachKhachHang.add(new Customer("Nguyễn Thái Hoà", "22/08/1983","Nam Định","https://i.pinimg.com/736x/c0/2f/bc/c02fbcd23651a3d322fc5fe0ec7acc5c.jpg")) ;
        danhSachKhachHang.add(new Customer("Trần Đăng Khoa", "17/08/1983","Hà Tây","https://i.pinimg.com/736x/c0/2f/bc/c02fbcd23651a3d322fc5fe0ec7acc5c.jpg")) ;
        danhSachKhachHang.add(new Customer("Nguyễn Đình Thi", "19/08/1983","Hà Nội","https://i.pinimg.com/736x/c0/2f/bc/c02fbcd23651a3d322fc5fe0ec7acc5c.jpg")) ;

        request.setAttribute("list" , danhSachKhachHang);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
