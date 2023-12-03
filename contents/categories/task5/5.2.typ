#pagebreak()
== Kế hoạch kiểm tra hệ thống
Nhóm thực hiện testplan trên 2 module chính đã thực thi là đăng nhập và upload file

=== Đăng nhập
Nhóm thực thi sử dụng danh sách tài khoản hợp lệ và không hợp lệ để đăng nhập vào hệ thống để ghi lại hành vi của hệ thống. Tài khoản phải bao gồm ít nhất 5 kí tự và mật khẩu phải ít nhất 8 kí tự. 
#table(
  columns: (40pt, 120pt, 70pt, 120pt, auto),
  inset: 10pt,
  align: horizon,
  [*Test*],  [*Tài khoản*], [*Mật khẩu*], [*Đặc điểm*], [*Kết quả*],
  "1", "dt", "12345678", "Tên tài khoản không đạt đủ 5 ký tự", image("../../images/testcase1.png"),
  "2", "duytan1711", "12345", "Mật khẩu không đạt đủ 8 ký tự", image("../../images/testcase2.png"),
  "3", "dt", "12345", "Cả tài khoản và mật khẩu đều không thỏa mãn về số ký tự tối thiểu", image("../../images/testcase3.png"),
  "4", "student@example.com", "1234567890", "Tài khoản hoặc mật khẩu không chính xác", image("../../images/testcase4.png"),
  "5", "student@exmple.com", "123456789", "Thỏa mãn điều kiện và đăng nhập vào hệ thống", image("../../images/testcase5.png")
)

=== Upload tài liệu
Hệ thống chấp nhận những tài liệu với các định dạng *.doc, .docx, .xls, .xlsx, .ppt, .jpg, .png, .pdf* với kích thước file tối đa là 100MB nên chúng ta sẽ lần lượt thực hiện các testcase trên các định dạng file khác nhóm trên, file có kích thước lớn hơn 100MB và những file phù hợp để theo dõi phản hồi của hệ thống

==== File có định dạng khác trong những định dạng được chấp nhận
Người dùng upload file có định dạng *.pkt* - *_2110527-NguyenHoangDuyTan-lab1c.pkt_*. Hệ thống sẽ không chuyển sang trang chỉnh sửa thông tin file.
#figure(
  grid(
    columns: 2,
    gutter: 3mm,
    image("../../images/testcaseupload1.png"),
    image("../../images/testcaseupload2.png"),
  ),
  caption: "Phản hồi hệ thống khi người dùng upload file có định dạng không phù hợp"
)

=== File có định dạng phù hợp nhưng kích thước lớn. 
Người dùng upload file *_Giáo trình Lịch sử ĐCS VN.pdf_* với kích thước *16.8 MB* Người dùng chờ hệ thống một khoảng thời gian tương đối để phản hồi và chuyển sang trang chỉnh sửa thông tin.
#figure(
    image("../../images/testcaseupload3.png"),
  caption: "Người dùng upload file với định dạng pdf với kích thước lớn"
)

Sau khoảng thời gian tầm 5-7s, hệ thống sẽ chuyển sang trang chỉnh sửa thông tin
#figure(
    image("../../images/testcaseupload4.png"),
  caption: "Hệ thống phản hồi sau một khoảng thời gian dài"
)

=== File có định dạng phù hợp với kích thước nhỏ
Người dùng upload file *paypal.png* với kích thước *4 KB*. Hệ thống phản hồi ngay lập tức và chuyển sang trang chỉnh sửa thông tin.
#figure(
    image("../../images/testcaseupload5.png"),
  caption: "Người dùng upload file với định dạng png với kích thước nhỏ"
)

Hệ thống phản hồi ngay lập tức và chuyển sang trang chỉnh sửa thông tin
#figure(
    image("../../images/testcaseupload6.png"),
  caption: "Hệ thống phản hồi ngay lập tức"
)