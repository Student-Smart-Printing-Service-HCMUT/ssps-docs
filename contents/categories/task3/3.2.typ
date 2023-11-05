
== Component diagram
#figure(caption:"Component diagram", image("../../images/Component_diagram.png", fit: "contain"))
_Mô tả Component diagram của module Request Printing Order._
#block(inset:(left:1cm))[
  - Component diagram bao gồm các component: GUI, BE, PostgreSQL, MinIO, 3rd Party Payment Service.
  - GUI: Đây là giao diện mà người dùng tương tác với hệ thống. Component này giao tiếp qua API với các component con của BE để người dùng thực hiện tải tài liệu (Upload Service), mua coin (Purchase Coin), xác nhận đơn in (Checkout) và thực hiện in (Handle Printer)
  - BE: Bao gồm các component Upload Service, Checkout, Purchase Coin, Handle Printer. Các component trên sẽ nhận lệnh qua API từ GUI, cụ thể:
    -Component Upload Service yêu cầu dịch vụ tải file lên qua API từ component MinIO và truyền thông thông tin của file vào PostgreSQL.
    - Component Purchase yêu cầu dịch vụ qua API từ component 3rd Party Payment Service.
    - Component Checkout truyền dữ liệu sang component PostgreSQL. 
    - Component Handle Printer yêu cầu thông tin in tài liệu qua API từ component PostgreSQL và yêu cầu file tài liệu qua API từ component MinIO để thực hiện in tài liệu.
  - MinIO: lưu trữ file tài liệu tải lên từ Upload Service và truyền tài liệu cho Handle Printer
  - PostgreSQL: lưu trữ dữ liệu thông tin tài liệu từ component Upload Service và Checkout, truyền dữ liệu tài liệu cho Handle Printer.
  - 3rd Party Payment Service: cung cấp API cho Purchase Coin. 
]