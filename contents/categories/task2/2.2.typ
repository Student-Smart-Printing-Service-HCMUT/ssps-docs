
==  Sequence diagram 

_Draw an Sequence diagram to capture the business process between systems and the stakeholders in Task
Assignment module_\

#figure(caption: "Sequence diagram of Upload file",
    image("../../images/Uploaded_File_Sequence_Diagram.png")
  )
*Mô tả về quá trình upload file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên lựa chọn file cần in và chỉnh sửa các thông số in, sinh viên sẽ click vào button "Confirm" để tiến hành đặt in.
  - Phân lớp GUI sẽ gửi request (body của request này sẽ là một object bao gồm file và config của file đó) đến phân lớp Router để xử lý.
  - Phân lớp Router sẽ gửi request đến phân lớp Bussiness Logic để xử lý.
  - Phân lớp Bussiness Logic sẽ gọi hàm xử lý (handler) để xử lý.
  - Hàm xử lý sẽ lưu file vào Cloud Storage (Minio).
  - Nếu lưu file thành công, phân lớp Bussiness Logic sẽ trả về kết quả thành công cho phân lớp Router. Ngược lại, nếu lưu file thất bại (File không thỏa mãn các điều kiện của hệ thống), phân lớp Bussiness Logic sẽ trả về kết quả thất bại cho phân lớp Router. Phân lớp Router sẽ trả về kết quả thất bại cho phân lớp GUI.
  - Hàm xử lý tiếp tục lấy ra siêu dữ liệu (metadata) của file và gửi đến phân lớp Model.
  - Phân lớp Model sẽ tạo model cho siêu dữ liệu (metadata) của file. Nếu model hợp lệ, phân lớp Model sẽ ánh xạ model này xuống phân lớp Database. Ngược lại, nếu model không hợp lệ (Model không thỏa mãn các ràng buộc), các phân lớp còn lại lần lượt trả về kết quả lỗi.
  - Phân lớp Database sẽ lưu model nhận được và trả về kết quả thành công.
  - Khi không có kết quả thất bại nào được trả về từ phân lớp Router cho phân lớp GUI, phân lớp GUI sẽ hiển thị thông báo thành công cho người dùng.
]
*Mô tả về quá trình preview file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên upload file lên hệ thống, sinh viên sẽ được chuyển đến trang List of uploads & configured document.
  - Tại trang này, sinh viên có thể chọn file để preview.
  - Phân lớp GUI sẽ gửi request đến phân lớp Router để xử lý.
  - Phân lớp Router sẽ gửi request đến phân lớp Bussiness Logic để xử lý.
  - Phân lớp Bussiness Logic sẽ gọi hàm xử lý (handler) để xử lý.
  - Hàm xử lý sẽ gọi phân lớp Model để lấy ra siêu dữ liệu (metadata) của file.
  - Từ siêu dữ liệu (metadata) của file, phân lớp Model sẽ gửi đến Cloud Storage (Minio) để lấy ra file.
  - Sau khi file được lấy ra, Cloud Storage (Minio) sẽ trả về file cho hàm xử lý.
  - Hàm xử lý sẽ trả về kết quả thành công cho phân lớp Bussiness Logic.
  - Các phân lớp còn lại lần lượt trả về kết quả thành công.
  - Phân lớp GUI sẽ hiển thị file cho người dùng.
]
*Mô tả về quá trình remove file của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên upload file lên hệ thống, sinh viên sẽ được chuyển đến trang List of uploads & configured document.
  - Tại trang này, sinh viên có thể chọn file để remove.
  - Phân lớp GUI sẽ gửi request đến phân lớp Router để xử lý.
  - Phân lớp Router sẽ gửi request đến phân lớp Bussiness Logic để xử lý.
  - Phân lớp Bussiness Logic sẽ gọi hàm xử lý (handler) để xử lý.
  - Hàm xử lý sẽ gọi phân lớp Model để lấy ra siêu dữ liệu (metadata) của file.
  - Từ siêu dữ liệu (metadata) của file, phân lớp Model sẽ gửi đến Cloud Storage (Minio) để lấy ra file.
  - Sau khi file được lấy ra, Cloud Storage (Minio) sẽ xóa file.
  - Sau khi file được xóa, phân lớp Model sẽ gọi phân lớp Database để xóa model của file.
  - Sau khi model của file được xóa, phân lớp Database sẽ trả về kết quả thành công cho phân lớp Model.
  - Các phân lớp còn lại lần lượt trả về kết quả thành công.
  - Phân lớp GUI sẽ hiển thị thông báo thành công cho người dùng.
]
#figure(caption: "Sequence diagram of Checkout",
    image("../../images/Checkout_Sequence_Diagram.png")
  )

*Mô tả về quá trình Confirm Order của sinh viên lên hệ thống.*
#block(inset:(left:1cm))[
  - Sau khi sinh viên lựa chọn file cần in và chỉnh sửa các thông số in (lịch in, vị trí phòng in, phương thức thanh toán), sinh viên sẽ click vào button "Confirm" để tiến hành đặt in.
  - Phân lớp GUI sẽ gửi request (body của request này sẽ là các lựa chọn của sinh viên ở trên) đến phân lớp Router để xử lý.
  - Phân lớp Router sẽ gửi request đến phân lớp Bussiness Logic để xử lý.
  - Phân lớp Bussiness Logic sẽ gọi hàm xử lý (handler) để xử lý.
  - Nếu sinh viên chọn phương thức thanh toán là "Pay Coin", hàm xử lý sẽ gọi phân lớp Model để lấy ra model của sinh viên.
  - Phân lớp Model sẽ gửi model của sinh viên đến phân lớp Database để lấy ra số dư của sinh viên.
  - Phân lớp Database sẽ trả về số dư của sinh viên cho phân lớp Model.
  - Phân lớp Model sẽ trả về số dư của sinh viên cho phân lớp Bussiness Logic.
  - Nếu số dư của sinh viên lớn hơn hoặc bằng tổng tiền của đơn hàng, phân lớp Bussiness Logic sẽ gọi phân lớp Model để cập nhật số dư của sinh viên. Ngược lại, các phân lớp còn lại lần lượt trả về kết quả lỗi. Cuối cùng, phân lớp GUI sẽ hiển thị thông báo lỗi cho người dùng.
  - Nếu số dư đủ, phân lớp model sẽ tạo model cho body của request. Nếu model hợp lệ, phân lớp Model sẽ ánh xạ model này xuống phân lớp Database. Ngược lại, nếu model không hợp lệ (Model không thỏa mãn các ràng buộc), các phân lớp còn lại lần lượt trả về kết quả lỗi.
  - Phân lớp Database sẽ lưu model nhận được và trả về kết quả thành công.
  - Khi không có kết quả thất bại nào được trả về từ phân lớp Router cho phân lớp GUI, phân lớp GUI sẽ hiển thị thông báo thành công cho người dùng.
]