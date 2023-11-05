= Architecture design

== Kiến trúc phân lớp (Layered architecture)
#block(inset:(left:1cm))[
    Hệ thống HCMUT-SSPS sẽ sử dụng kiến trúc phân lớp (Layered architecture)
    - Ưu điểm: giảm bớt phụ thuộc vì các lớp sẽ độc lập với các lớp khác, giúp việc mở rộng hay debug hệ thống đơn giản và dễ dàng hơn. 
    - Nhược điểm: việc tách biệt hoàn toàn các lớp trong thực tế tương đối khó hiện thực. Các luồng dữ liệu đi qua nhiều lớp khác nhau có thể làm giảm tốc độ xử lý của hệ thống.
]
=== Kế hoạch trình bày giao diện (Interface strategy)
#block(inset:(left:1cm))[
    Giao diện người dùng sẽ được chia thành nhiều thành phần, mỗi thành phần đảm nhiều các chức năng cụ thể:
    - User Interaction: bao gồm Get Order List, Upload Files, Configuring Orders, Executing Orders, Log In.
    - Manager Interaction: Managing Printers, Get Logs, Log In.
    Giao diện người dùng được hiện thực trên công nghệ React với Typescript bởi tính gọn nhẹ thân thiện với người dùng và tính dễ tiếp cận, type-safe dành cho developer.
]

=== Data storage approach (Phương pháp lưu trữ dữ liệu)
#block(inset:(left:1cm))[
    Dữ liệu sẽ được lưu trữ qua hai server:
    - PostgreSQL server: Lưu trữ dữ liệu về đơn đặt in (Order), máy in (Printer), lịch sử (history log).
    - MinIO server: Lưu trữ các file được người dùng tải lên.
]

=== Quản lý API (API management)
Các API được quản lý bằng công cụ quản lý Swagger. Các API của hệ thống được chia ra làm 2 loại:
#block(inset:(left:1cm))[
    - 3rd Party: người dùng gọi API khi muốn sử dụng các dịch vụ thanh toán/nạp tiền (Momo, Paypal,...) và dịch vụ lưu trữ file (MinIO).
    - PostgreSQL server: sinh viên gọi API để theo dõi đơn hàng của mình và location, người quản lý chỉnh sửa thông tin, lưu lại lịch sử đơn hàng,...
]
#pagebreak()

=== Các biểu đồ phân lớp
*Box-line diagram*
#figure(caption: "Box-line diagram", image("../../images/Box_line_diagram.png", fit: "contain"))
_Mô tả box-line diagram:_
#block()[
    - Được xây dựng theo mô hình microservice - biểu hiện interaction của khách hàng và người quản lý với từng dịch vụ, tác động đến kho lưu trữ dữ liệu.
    - Tương tác của khách hàng:
    #block(inset:(left:1cm))[
        - Lấy ra danh sách đơn hàng bằng cách truy cập vào hệ cơ sở dữ liệu.
        - Đăng nhập dựa vào xác thực ở bên thứ ba.
        - Tải file từ máy lên minIO.
        - Điều chỉnh cấu hình của danh sách đơn hàng trên giao diện người dùng và thực hiện thanh toán đơn hàng nhờ vào dịch vụ bên thứ ba. Sau khi thanh toán đơn hàng, thông tin thanh toán sẽ được lưu vào hệ cơ sở dữ liệu. 
        - Mua coin (phương tiện thanh toán trên hệ thống) bằng dịch vụ bên thứ 3 (Momo, paypal,...).
    ]
    - Tương tác của quản lý:
    #block(inset:(left:1cm))[
        - Quản lý máy in - cập nhật, xóa, thêm và lưu trữ thông tin máy in sau khi điều chỉnh lên hệ cơ sở dữ liệu.
        - Lưu lại lịch sử đơn hàng trên hệ cơ sở dữ liệu.
    ]
]
#pagebreak()

*Deployment diagram*:
#figure(caption: "Deployment Diagram", image("../../images/Deployment_diagram.png", fit: "contain"))
_Mô tả deployment diagram:_
#block()[
    - Được xây dựng để mô tả quá trình ứng dụng hệ thống và các dịch vụ được deploy lên Internet và tiếp cận đến khách hàng thông qua các giao thức đã được định nghĩa.
    - Khách hàng và quản lý truy cập giao diện ứng dụng thông qua giao thức HTTP với port 3000.
    - Sau khi truy cập vào giao diện ứng dụng, người dùng sử dụng cách dịch vụ của hệ thống như in ấn, theo dõi lịch sử, đăng nhập, quản lý máy in,... bằng giao thức HTTP với port 8080.
    - Các dịch vụ đó sẽ gọi API đến các nơi lưu trữ dữ liệu thông qua giao thức HTTP với các port khác nhau được quy ước như sau:
    #block(inset:(left:1cm))[
        \u{2218} MinIO: 9000
        #linebreak()
        \u{2218} PostgreSQL: 5432
        #linebreak()
        \u{2218} 3rd Authentication: 802
        #linebreak()
        \u{2218} 3rd Party Payment Service: 443
    ]
]
