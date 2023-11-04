==  User interfaces

_ MVP 1 - UI for desktop-view central dashboard for Student to Order Print
_\

Ở Task này, nhóm đã sử dụng Figma để xây dựng giao diện cho các thao tác cơ bản của
Student để Order Print. Cụ thể phần hiện thực Figma ở link sau:
https://www.figma.com/file/7eKhLKrVARC1YBJPBpM6dO/%5BDraft%5D-Hi-fi-design?type=design&node-id=0-1&mode=design&t=bq6c1bMcHuCwIvk0-0

Sau khi hoàn thành, nhóm đã có được giao diện như sau:\
*Mobile View and Desktop View for Student Login*
#figure(caption: "UI Login of Mobile View",
    image("../../images/UI_login_mobile.png", fit: "contain", width: 40%, height: 40%))
Đây là giao diện *Đăng nhập* ở View Mobile, người dùng sẽ nhập các thông tin *Username* và *Password* tương ứng với tài khoản cá nhân đế đăng nhập. \
Sau khi người dùng nhập thông tin và Click chọn *Login*, nêu thông tin đúng, hệ thống sẽ chuyển người dùng đến trang *Home Page*.
#figure(caption: "UI Login of Desktop View",
    image("../../images/UI_login_desktop.png", fit: "contain"))
Đây là giao diện *Đăng nhập* ở View Desktop, người dùng sẽ nhập các thông tin *Username* và *Password* tương ứng với tài khoản cá nhân đế đăng nhập. \
Sau khi người dùng nhập thông tin và Click chọn *Login*, nêu thông tin đúng, hệ thống sẽ chuyển người dùng đến trang *Home Page*.\
#pagebreak()
*Mobile View and Desktop View for Home Page*
#figure(caption: "UI Home page of Mobile View",
    image("../../images/UI_homepage_mobile.png", fit: "contain", width: 50%, height: 40%))
Home Page của Student sẽ hiển thị các thông tin cơ bản của Student, Order List Process và có button để Student có thể Order Print. Ngoài ra Home Page còn có thanh Navbar để Student có thể chuyển đổi giữa các trang của hệ thống.\
#block(inset:(left:1cm)) 
- Ở giao diện Mobile, phía góc phải của màn hình là nơi thể số tiền *Coin* của Student.\
- Ở giữa giao diện sẽ có một button *Order Print* để Student có thể Upload file và tiến hành order print tào liệu. \
- Và phía dưới giao diện là những thẻ *Order Process* bao gồm thông tin về *Order ID*, *Order Status*, *File name*, *Location*, *Number ò pages*, *Total Price* and *Payment Status*. Những thẻ này giúp Student có thể theo dõi quá trình Order Print của mình. \



#figure(caption: "UI Navbar of Mobile View",
    image("../../images/UI_navbar_mobile.png", fit: "contain", width: 50%, height: 40%))
#block(inset:(left:1cm)) 
Phía bên trái sẽ có thanh Navbar để Student có thể chuyển đổi giữa các trang của hệ thống.\
Thanh Navbar sẽ bao gồm các trang sau: *Home Page*, *My Order*, *Payment* and *Location*.\
Bên cạnh đó, Student cũng có thể chọn *Help Center* để xem các câu hỏi thường gặp, *Setting* để thay đổi thông tin cá nhân và *Logout* để đăng xuất khỏi hệ thống.\

Khi Student click vào button *Order Print*, sẽ hiện ra giao diện để Upload File để sinh viên có thể chọn file cần in. \
#figure(caption: "UI Upload File of Mobile View",
    image("../../images/UI_upload_mobile.png", fit: "contain", width: 50%))

Sinh viên có thể kéo thả file vào vùng xanh này hoặc click vào vùng xanh, hệ thống sẽ mở cửa sổ để sinh viên có thể chọn file cần in. \
#pagebreak()
Tiếp theo, Home Page của Desktop View.
#figure(caption: "UI Home page of Desktop View",
    image("../../images/UI_homepage_desktop.png", fit: "contain"))
Phía trên cùng là thanh *Navbar* để Student có thể chuyển đổi giữa các trang của hệ thống.\
Tương tự như Mobile View, khi Student click vào button *Order Print*, sẽ hiện ra giao diện để Upload File để sinh viên có thể chọn file cần in.\
Và phía dưới giao diện là những thẻ *Order Process* bao gồm thông tin về *Order ID*, *Order Status*, *File name*, *Location*, *Number ò pages*, *Total Price* and *Payment Status*. Những thẻ này giúp Student có thể theo dõi quá trình Order Print của mình. \

Khi Student click vào button *Order Print*, sẽ hiện ra giao diện để Upload File để sinh viên có thể chọn file cần in. \
#figure(caption: "UI Upload File of Desktop View",
    image("../../images/UI_upload_mobile.png", fit: "contain", width: 50%))
Sinh viên có thể kéo thả file vào vùng xanh này hoặc click vào vùng xanh, hệ thống sẽ mở cửa sổ để sinh viên có thể chọn file cần in. \


#pagebreak()
*Mobile View and Desktop View for Order List*\
Sau khi Student Order Print, sẽ hiện ra giao diện Order List để Student có thể xem lại các Order đã Order Print.

#figure(caption: "UI Order List of Mobile View",
    image("../../images/UI_order1_mobile.png", fit: "contain"))

#figure(caption: "UI Order List of Mobile View",
    image("../../images/UI_order2_mobile.png", fit: "contain"))

#figure(caption: "UI Order List Preview File of Mobile View",
    image("../../images/UI_order3_mobile.png", fit: "contain"))

Ở giao diện Mobile, Student có thể click vào file để xem trước file đã Order Print. \
Ở đây sinh viên cũng có thể chọn số lượng bản in và cũng có thể chọn *Delete* để xóa Order Print. \
Sau khi chọn *Delete*, hệ thống sẽ hiển thị lại vùng xanh để Student có thể chọn file cần tải lên lại.\
Hệ thống hỗ trợ, cho sinh viên có thể Upload nhiều file cùng lúc. \
Tiếp theo, Student có thể tùy chỉnh những thông tin trước khi in như là *Layuot*, *Pages Option*. \
Phía dưới giao diện, hệ thống tính toán tổng tiền và hiển thị cho Student. \
Sau khi Student chọn vào *Save*, hệ thống sẽ chuyển trang xác nhận lại trước khi *Order*.\
Tại trang này, Student xem lại toàn bộ thông tin các file đã Upload và tổng tiền Thanh toán và tiếp tục chọn *Order* để hoàn tất quá trình Order Print. \
Sinh viên sẽ được chuyển đến trang *Confirm Order*, nêu số coin của sinh viên không đủ, hệ thống sẽ hiển thị thông báo và chuyển đến trang *Payment* để nạp thêm coin. \
Nếu số coin đủ, hệ thống sẽ hiển thị thông báo *Order Successfully* và chuyển đến trang *Home Page*. \


#pagebreak()
Sau đây, là giao diện Order List của Desktop View.

#figure(caption: "UI Order List of Desktop View",
    image("../../images/UI_order1_desktop.png", fit: "contain"))

#figure(caption: "UI Order List Preview File of Desktop View",
    image("../../images/UI_order_preview.png", fit: "contain"))

#figure(caption: "UI Order List of Desktop View",
    image("../../images/UI_order2_desktop.png", fit: "contain"))

#figure(caption: "UI Order List of Desktop View",
    image("../../images/UI_order3_desktop.png", fit: "contain"))

#figure(caption: "UI Order List of Desktop View",
    image("../../images/UI_order4_desktop.png", fit: "contain"))

Tương tự, ở giao diện Desktop, Student có thể click vào file để xem trước file đã Order Print. \
Ở đây sinh viên cũng có thể chọn số lượng bản in và cũng có thể chọn *Delete* để xóa Order Print. \
Sau khi chọn *Delete*, hệ thống sẽ hiển thị lại vùng xanh để Student có thể chọn file cần tải lên lại.\
Hệ thống hỗ trợ, cho sinh viên có thể Upload nhiều file cùng lúc. \
Tiếp theo, Student có thể tùy chỉnh những thông tin trước khi in như là *Layuot*, *Pages Option*. \
Phía dưới giao diện, hệ thống tính toán tổng tiền và hiển thị cho Student. \
Sau khi Student chọn vào *Save*, hệ thống sẽ chuyển trang xác nhận lại trước khi *Order*.\
Tại trang này, Student xem lại toàn bộ thông tin các file đã Upload và tổng tiền Thanh toán và tiếp tục chọn *Order* để hoàn tất quá trình Order Print. \
Sinh viên sẽ được chuyển đến trang *Confirm Order*, nêu số coin của sinh viên không đủ, hệ thống sẽ hiển thị thông báo và chuyển đến trang *Payment* để nạp thêm coin. \
Nếu số coin đủ, hệ thống sẽ hiển thị thông báo *Order Successfully* và chuyển đến trang *Home Page*. \
