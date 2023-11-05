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
       [ 1. Sau khi sinh viên hoàn tất việc upload file, hệ thống sẽ lưu file trên cloud storage là MinIo.
         2. Hệ thống sẽ lưu thông tin về các cài đặt in của file cùng với một vài thông tin khác của file(tên, kích cỡ,...) thành metadata.  
         3. Thông tin metadata của file sẽ được dùng để truy xuất ngược lại file ở MinIo khi sinh viên tiến hành preview file hoặc remove file.\
         4. Hệ thống sẽ tiến hành tạo model cho metadata bằng Prisma ORM.
         5. Model của metadata sẽ được lưu vào database là Postgres.
         7. Sau khi lưu thành công, hệ thống sẽ trả về cho sinh viên một đường dẫn để sinh viên có thể preview file.
         8. Sinh viên có thể xóa file nếu muốn.
         9. Sau khi sinh viên hoàn tất việc chọn file, hệ thống sẽ tiến hành tính toán số lượng coins mà sinh viên phải trả cho đơn hàng.
         10. Khi sinh viên xác nhận hoàn tất đơn hàng, hệ thống sẽ thực hiện hai việc:
            10a. Update thông tin về số lượng coins thông qua model người dùng.
            10b. Tạo model cho đơn hàng bằng Prisma ORM. Model này sẽ bao gồm các thông tin mà sinh viên đã cài đặt cho đơn hàng (số lượng bản in, màu sắc, giấy,..).
         11. Hệ thống sẽ lưu model của đơn hàng vào database là Postgres.
         12. Hệ thống sẽ trả về cho sinh viên một đường dẫn để sinh viên có thể xem lại thông tin đơn hàng.
          
    ],
    [Exceptional flow], [*Ở bước 10a*, Nếu csố lượng coins mới của sinh viên không đủ, đơn hàng sẽ không được đặt và thông báo hiển thị cho sinh viên, sinh viên có thể chọn đến trang nạp tiền để nạp thêm tiền vào tài khoản và quay lại bước 10.],
    [Alternative flow], [*Ở bước 8*, Nếu sinh viên xác nhận xóa tài liệu sau khi nó tải lên, họ có thể xóa tài liệu đó và tải lên một tài liệu khác.],
    [Includes], [Upload Document, Preview Document, Remove Document, Specify Printing Option, Checkout, Confirm Order, Set Location, Payment, Schedule Print.]

)
#figure(caption: [Order Printing Job scenario], table()
)

#linebreak()
=== _Use case Login Service_
#figure(caption: [Use Case Diagram for Login Service],
  image("../../images/UC_Login_Service.png")
)
