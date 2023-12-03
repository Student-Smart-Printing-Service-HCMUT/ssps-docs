#pagebreak()
= Implementation - Sprint 2

== Thiết kế ERD cho hệ thống
#figure(caption: "ERD của hệ thống", image("../../images/ERD.png"))
*Mô tả ERD*: SSPS bao gồm 5 kiểu thực thể chính *_student, printer_manager, printer, bill, printing request_*. Kiểu thực thể *Student* có các thuộc tính mã sinh viên, tên sinh viên, email, mật khẩu, số coin được gửi mặc định trong mỗi học kỳ và số coin còn lại trong mỗi thời diểm. Kiểu thực thể *printer-manager* cũng có các thuộc tính mã người quản lý, tên quản lý, email, mật khẩu, những nơi mà người quản lý máy in. Kiểu Thực thể *printer (máy in)* có các thuộc tính mã máy in, nhãn hiệu, mô tả, vị trí,... Kiểu thực thể *bill (hóa đơn)* có các thuộc tính mã hóa đơn, giá trị, ngày tạo hóa đơn, tên file, máy in phụ trách, mã sinh viên. Kiểu thực thể *printing-request* có các thuộc tính như mã yêu cầu, thông tin file, số copy, kích cỡ và các thuộc tính bổ sung. Một người quản lý có thể quản lý một hoặc nhiều máy in. Nhưng một máy in chỉ được quản lý bởi 1 nhân viên quản lý. Một sinh viên có thể không đặt in hoặc đặt in một hoặc nhiều đơn yêu cầu cho nên họ phải chi trả một hoặc nhiều hóa đơn. Một máy in có thể được sử dụng để xử lý một hoặc nhiều đơn yêu cầu của sinh viên.

