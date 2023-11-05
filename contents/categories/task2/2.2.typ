#pagebreak()
==  Sequence diagram 

_Draw an Sequence diagram to capture the business process between systems and the stakeholders in Task
Assignment module_\

#figure(caption: "Sequence diagram of Upload file",
    image("../../images/Upload_Sequence_Diagram.png")
  )
*Mô tả về quá trình upload file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên lựa chọn file cần in và chỉnh sửa các thông số in, sinh viên sẽ click vào button "Confirm" để tiến hành đặt in.
  - Object PrintingOrderPage sẽ gọi method Route(Upload) của Object FileRouter để xử lý.
  - Object FileRouter sẽ gọi method Handler(Request) của Object FileHandler để xử lý.
  - Object FileHandler sẽ gọi method Store(File) của Object FileStorage để xử lý.
    + Nếu file được lưu thành công, Object FileHandler sẽ gọi method Store(Metadata) của Object FileModel để xử lý.
    + Nếu file được lưu không thành công, Object FileStorage sẽ trả về kết quả thất bại cho Object FileRouter và các Object còn lại lần lượt trả về kết quả thất bại.
  - Nếu model được tạo thành công, Object FileMOdel sẽ gọi method Save(File) của Object FileDatabase để xử lý.
  - Nếu model được tạo không thành công, Object FileModel sẽ trả về kết quả thất bại cho Object FileHandler và các Object còn lại lần lượt trả về kết quả thất bại.

]
#figure(caption: "Sequence diagram of Preview and Remove file",
    image("../../images/Preview_Sequence_Diagram.png")
  )
*Mô tả về quá trình preview file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên upload file lên hệ thống, sinh viên sẽ được chuyển đến trang List of uploads & configured document.
  - Object PrintingOrderPage sẽ gọi method Route(Preview) của Object FileRouter để xử lý.
  - Object FileRouter sẽ gọi method Handler(Request) của Object FileHandler để xử lý.
  - Object FileHandler sẽ gọi method Find(Model) của Object FileModel để xử lý.
  - Object FileModel sẽ gọi method Find(Metadata) của Object FileDatabase để xử lý.
  - Object FileDatabase sẽ trả về kết quả thành công cho Object FileModel.
  - Object FileModel sẽ trả về kết quả thành công cho Object FileHandler.
  - Object FileHandler sẽ trả về kết quả thành công cho Object FileRouter.
  - Object FileRouter sẽ trả về kết quả thành công cho Object PrintingOrderPage.
  - Object PrintingOrderPage sẽ hiển thị thông tin của file cho người dùng.
]
*Mô tả về quá trình remove file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên upload file lên hệ thống, sinh viên sẽ được chuyển đến trang List of uploads & configured document.
  - Object PrintingOrderPage sẽ gọi method Route(Remove) của Object FileRouter để xử lý.
  - Object FileRouter sẽ gọi method Handler(Request) của Object FileHandler để xử lý.
  - Object FileHandler sẽ gọi method Find(Model) của Object FileModel để xử lý.
  - Object FileModel sẽ gọi method Find(Metadata) của Object FileDatabase để xử lý.
  - Object FileDatabase sẽ trả về Metadata của file cho Object FileModel.
  - Object FileStorage sẽ tự gọi method Delete(File) của mình để xóa file ra khỏi cloud storage.
  - Object FileModel sẽ trả về kết quả thành công cho Object FileHandler.
  - Object FileHandler sẽ gọi method Delete(Model) của Object FileModel để xử lý.
  - Object FileModel sẽ gọi method Delete(Metadata) của Object FileDatabase để xử lý.
  - Object FileDatabase sẽ trả về kết quả thành công cho Object FileModel.
  - Object FileModel sẽ trả về kết quả thành công cho Object FileHandler.
  - Object FileHandler sẽ trả về kết quả thành công cho Object FileRouter.
  - Object FileRouter sẽ trả về kết quả thành công cho Object PrintingOrderPage.
  - Object PrintingOrderPage sẽ hiển thị thông báo thành công cho người dùng.

]
#figure(caption: "Sequence diagram of Checkout",
    image("../../images/Checkout_Sequence_Diagram.png")
  )

*Mô tả về quá trình Confirm Order của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên lựa chọn file cần in và chỉnh sửa các thông số in (lịch in, vị trí phòng in, phương thức thanh toán), sinh viên sẽ click vào button "Confirm" để tiến hành đặt in.
  - Object PrintingOrderPage sẽ gọi method Route(Checkout) của Object OrderRouter để xử lý.
  - Object OrderRouter sẽ gọi method Handler(Request) của Object OrderHandler để xử lý.
  - Object OrderHandler sẽ gọi method Get_User(User) của Object UserModel để lấy ra model của sinh viên.
  - Object UserModel sẽ gọi method Get_Coins(User) của Object UserDatabase để lấy ra số coins của sinh viên.
  - Object UserDatabase sẽ trả về số coins của sinh viên cho Object UserModel.
  - Object UserModel sẽ trả về kết quả thành công cho Object OrderHandler.
    + Nếu số coins của sinh viên không đủ để thanh toán, Object OrderHandler sẽ trả về kết quả thất bại cho Object OrderRouter và các Object còn lại lần lượt trả về kết quả thất bại.
    + Nếu số coins của sinh viên đủ để thanh toán, Object OrderHandler sẽ tiến hành cập nhật lại số coins của sinh viên thông qua method Update(User) của Object UserModel.
  - Object OrderHandler sẽ gọi method Create(Model) của Object OrderModel để tạo model của order.
  - Object OrderModel sẽ gọi method Create(Order) của Object OrderDatabase để tạo order.
    + Nếu order được tạo thành công, Object OrderModel sẽ gọi method Save(Order) của Object OrderDatabase để lưu order.
    + Nếu order được tạo không thành công, Object OrderDatabase sẽ trả về kết quả thất bại cho Object OrderModel và các Object còn lại lần lượt trả về kết quả thất bại.
]