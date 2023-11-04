#pagebreak()
== Use Case Diagram 
=== _Whole System_

_Draw a use case diagram for whole System_

#figure(caption: [Use Case Diagram for the Whole System],
    image("../../images/UC_Whole_System.png")
  )

#pagebreak()
=== _Use case Order Printing Job_

#figure(caption: [Use Case Diagram for Order Printing Job],
    image("../../images/UC_Order_Print.png")
  )

*Order Printing Job scenario*

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Order Printing Job*],
    [Actors], [Student, Payment Service Provider.],
    [Brief Description], [Sinh viên thực hiện chức năng Order print để đặt in tài liệu trong hệ thống.],
    [Preconditions], [Sinh viên đã đăng nhập vào hệ thống và có tài liệu cần in.],
    [Postconditions], [Sinh viên đã đặt in tài liệu thành công và được lên lịch in trong hệ thống.],
    [Trigger], [Sinh viên nhấn nút Order print và chọn tài liệu cần in.],
    [Normal Flow], 
       [ 1. Sinh viên nhấn nút “Order printing job”.\
         2. Sinh viên tải (upload file) tài liệu cần in lên hệ thống.\
         3. Sinh viên xem lại tài liệu (previews the document) và xác nhận (confirm) tài liệu là chính xác.\
         4. Sau đó, sinh viên có thể tùy chỉnh các thiết lập cho tài liệu in (print setting) (e.g., Number of copies, Option Layout, Option Pages, Option Pages side, etc.).\
         5. Sinh viên có thể tùy chỉnh thêm các thiết lập nâng cao (e.g., Page size, Scale, Pages per sheet, etc.).\
         6. Chọn địa điểm cho các tài liệu in (print job location).\
         7. Thiết lập thời gian nhận tà liệu in sau khi hoàn tất. \
         8. Tiến hành quá trình thanh toán.\
         9. Sinh viên xác nhận (confirm) thông tin đơn hàng chi tiết và tiến hành thanh toán.\
        10. Lựa chọn phương thức thanh toán bằng coin. \  
        10a. Nếu không đủ số lượng coin, sinh viên cần tiến hành nạp thêm coin và quay lại bước 10.\
        11. Hệ thống xác nhận thanh toán thành công, hệ thống đặt lệnh in vào hàng đợi in và thông báo cho sinh viên biết. \
    ],
    [Exceptional flow], [*Ở bước 10a*, Nếu có vấn đề với việc thanh toán (ví dụ: không đủ tiền), đơn hàng sẽ không được đặt và thông báo hiển thị cho sinh viên, sinh viên có thể chọn đến trang nạp tiền để nạp thêm tiền vào tài khoản và quay lại bước 10.],
    [Alternative flow], [*Ở bước 2*, Nếu sinh viên xác nhận xóa tài liệu sau khi nó tải lên, họ có thể xóa tài liệu đó và tải lên một tài liệu khác.],
    [Includes], [Upload Document, Preview Document, Remove Document, Specify Printing Option, Checkout, Confirm Order, Set Location, Payment, Schedule Print.]

)
#figure(caption: [Order Printing Job scenario], table()
)

#linebreak()
=== _Use case Login Service_
#figure(caption: [Use Case Diagram for Login Service],
  image("../../images/UC_Login_Service.png")
)
