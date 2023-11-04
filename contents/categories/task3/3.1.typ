= Architecture design

== Layered architecture
#block(inset:(left:1cm))[
    Hệ thống HCMUT-SSPS sẽ sử dụng kiến trúc phân lớp (Layered architecture)
    - Ưu điểm: giảm bớt phụ thuộc vì các lớp sẽ độc lập với các lớp khác, giúp việc mở rộng hay debug hệ thống đơn giản và dễ dàng hơn. 
    - Nhược điểm: việc tách biệt hoàn toàn các lớp trong thực tế tương đối khó hiện thực. Các luồng dữ liệu đi qua nhiều lớp khác nhau có thể làm giảm tốc độ xử lý của hệ thống.
]
=== Presentation Strategy
#block(inset:(left:1cm))[
    Giao diện người dùng sẽ được chia thành nhiều thành phần, mỗi thành phần đảm nhiều các chức năng cụ thể:
    - User Interaction: bao gồm Get Order List, Upload Files, Configuring Orders, Executing Orders, Log In.
    - Manager Interaction: Managing Printers, Get Logs, Log In.
    Giao diện người dùng được hiện thực trên công nghệ React với Typescript bởi tính gọn nhẹ thân thiện với người dùng và tính dễ tiếp cận, type-safe dành cho developer.
]

=== Data storage approach
#block(inset:(left:1cm))[
    Dữ liệu sẽ được lưu trữ qua hai server:
    - PostgreSQL server: Lưu trữ dữ liệu về đơn đặt in (Order), máy in (Printer), lịch sử (history log).
    - MinIO server: Lưu trữ các file được người dùng tải lên.
]

=== API management
#block(inset:(left:1cm))[
    Người dùng truy cập các tính năng thông qua các dịch vụ và API của hệ thống và các bên thứ ba. Các API được quản lý bằng công cụ quản lý Swagger. 
]
