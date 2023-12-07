==  User interfaces
#set enum(numbering:(it => strong[#it.]))

_ MVP 1 - UI for desktop-view central dashboard for Student to Order Print_

Ở Task này, nhóm đã sử dụng Figma để xây dựng giao diện cho các thao tác cơ bản của
Student để Order Print.\
Cụ thể phần hiện thực Figma ở link sau:
https://www.figma.com/file/7eKhLKrVARC1YBJPBpM6dO/%5BDraft%5D-Hi-fi-design?type=design&node-id=0-1&mode=design&t=bq6c1bMcHuCwIvk0-0

=== Trang đăng nhập (Login Page)

#figure(caption: "Giao diện trang đăng nhập",
    image("../../images/Login_page.png", fit: "contain"))
Trang đăng nhập của hệ thống có form đăng nhập với các trường sau đây:
#block(inset:(left:1cm))[
    - Trường đăng nhập: Người dùng nhập tên tài khoản
    - Trường mật khẩu: Người dùng nhập mật khẩu đã được lưu trữ
    - Nút Login (Đăng nhập): Người dùng nhất nút *Login* sau khi điền thông tin (tài khoản, mật khẩu), thông tin này sẽ được gửi sang bên thứ ba để xác thực.
]
Nếu đăng nhập thành công, người dùng sẽ được chuyển hướng sang trang chủ (Homepage) (chi tiết ở mục *2.4.2*)
Nếu đăng nhập không thành công, sẽ hiển thị ra các lỗi tương ứng như sau
#block(inset:(left:1cm))[
    - Người dùng nhập các thông tin không thỏa mãn điều kiện của các trường (Tên người dùng ít nhất là 5 kí tự, mật khẩu ít nhất 8 kí tự)
    #figure(caption: "Lỗi khi người dùng nhập thông tin không thỏa mãn các trường",
        image("../../images/Login_page_error1.png", fit: "contain"))
    - Người dùng đăng nhập sai thông tin về tài khoản hoặc mật khẩu: hiển thị lỗi *User not found*
     #figure(caption: "Lỗi khi người dùng nhập sai thông tin được lưu trữ",
        image("../../images/Login_page_error2.png", fit: "contain"))
]
#pagebreak()

=== Trang chủ (Home Page)

Để có thể truy cập được vào trang chủ của hệ thống, người dùng đã đăng nhập thành công.
#figure(caption: "UI Home  of Desktop View", 
    image("../../images/Home_page.png", fit: "contain"))
Các thành phần chính của trang chủ hệ thống (Homepage):
#enum(
    enum.item(1)[
        *Header*: biểu diễn những thông tin chính của trang chủ (thành phần cố định trong các trang)
        #block(inset:(left:1cm))[
            - Home: Điều hướng người dùng về trang chủ.
            - My order: Điều hướng người dùng đến trang theo dõi danh sách đơn hàng đã được lưu trên hệ thống (chi tiết ở mục *2.4.7*).
            - Payment: Điều hướng đến trang thanh toán đơn hàng (chi tiết ở mục *2.4.6*).
            - Location: Điều hướng đến trang vị trí máy in trong khuôn viên của trường (chi tiết ở mục *2.4.*).
            - Coin: Hiển thị số coin hiện tại của người dùng.
        ]
    ],
    enum.item(2)[
        *My Order*: Nơi người dùng có thể xem lại thông tin của các đơn đặt hàng của mình về tình trạng, tên file, số lượng,... Khi nhấn vào *See more*, người dùng sẽ được điều hướng đến trang danh sách đơn hàng (chi tiết ở mục *2.4.7*)
    ],
    enum.item(3)[
        *Order Printing*: Khi sinh viên nhấn vào nút này, người dùng được trả về một box file (nơi giúp người dùng có thể tải file lên hệ thống và sau đó được định hướng sang trang tải tài liệu, chi tiết ở mục *2.4.3*).
        #figure(caption: "Giao diện Box file",
            image("../../images/UI_upload_mobile.png", fit: "contain", width: 50%))
    ]
)


=== Trang tải file lên hệ thống

Để có thể truy cập được vào trang tải file lên hệ thống, người dùng đã nhấn vào nút *Order printing* ở trang chủ hệ thống.
#figure(caption: "Giao diện trang tải file",
            image("../../images/Upload_page.png", fit: "contain"))
Các thành phần chính trong trang tài file lên hệ thống:
#enum(
    enum.item(1)[
        *Thông tin về file upload*: biểu diễn những thông tin ban đầu của file upload
        #block(inset:(left:1cm))[
            - Trạng thái upload: thể hiện thông tin tiến trình  - % thông tin của file đã được tải lên hệ thống.
            - Tên và kích thước file uplload.
            - Số tiền dự kiến phải thanh toán của file upload.
            - Biểu tượng xóa file upload: Khi người dùng nhấn vào biểu tượng này trang tải file của người dùng sẽ được chuyển đổi như sau:
            #figure(caption: "Giao diện trang tải file khi người dùng xóa file mới được upload",
                image("../../images/Upload_deleted_page.png", fit: "contain", width: 50%))
        ]
    ],
    enum.item(2)[
        *Form điều chỉnh các thông số in ấn*: Người dùng điều chỉnh các thông số trước khi lưu trữ file lên đơn hàng bao gồm layout, những trang mà người dùng muốn in của file được upload lên hệ thống
        #figure(caption: "Các thông số người dùng điều chỉnh",
                image("../../images/Upload_page_edit.png", fit: "contain", width: 70%))
    ],
    enum.item(3)[
        *Nút lưu trữ*: Người dùng muốn lưu trữ file upload vào danh sách order sau khi điều chỉnh và xác nhận các thông số như layout, pages của file đó. Sau đó, người dùng sẽ được điều hướng sang trang danh sách trong hàng đợi. (chi tiết ở mục *2.4.4*). 
    ]
)


=== Trang danh sách đang trong hàng đợi
- Để có thể truy cập vào trang này, người dùng đã upload file lên và lưu trữ vào danh sách.
#figure(caption: "Giao diện trang danh sách đang trong hàng đợi",
    image("../../images/Orderlist_page.png", fit: "contain"))
Các thành phần chính trong trang danh sách đang trong hàng đợi:
#enum(
    enum.item(1)[
        *Danh sách các file chuẩn bị được đặt*: Những file đã được người dùng upload và được đưa vào danh sách trước khi order. Ở các file trong danh sách sẽ hiển thị các thông tin sau để người dùng có thể thay đổi và xác nhận
        #block(inset:(left:1cm))[
            - Tên và kích thước file.
            - Số lượng file upload (có thể được điều chỉnh trực tiếp trên trang này).
            - Tổng số tiền dự tính của mỗi file.
            - Chế độ preview của thông tin file upload
            #figure(caption: "Chế độ preview file",
                image("../../images/Orderlist_page_preview.png", fit: "contain", width: 50%))
        ]
    ],
    enum.item(2)[
        *Chi tiết giá cả của danh sách đơn hàng*: Thông tin về tổng giá tạm thời của danh sách đơn hàng bao gồm giá cứng và giá sử dụng dịch vụ.
    ],
    enum.item(3)[
        *Nút đặt hàng*: Người dùng xác nhận danh sách đơn hàng mình đã upload và chuẩn bị được điều hướng sang trang xác nhận đơn hàng (chi tiết ở mục *2.4.5*).
    ]
)


=== Trang xác nhận danh sách đơn hàng

Để có thể truy cập được trang này, người dùng đã nhấn nút *Order* ở trang danh sách trong hàng đợi sau khi điều chỉnh về số lượng.
#figure(caption: "Giao diện trang xác nhận danh sách đơn hàng",
    image("../../images/Confirm_page.png", fit: "contain"))
Các thành phần chính trong trang xác nhận danh sách đơn hàng:
#enum(
    enum.item(1)[
        *Danh sách các đơn hàng*: Những file đã được người dùng upload và được order. Ở các file trong danh sách sẽ hiển thị các thông tin sau để người dùng có thể thay đổi và xác nhận
        #block(inset:(left:1cm))[
            - Tên và kích thước file.
            - Số lượng file upload (có thể được điều chỉnh trực tiếp trên trang này).
            - Tổng số tiền dự tính của mỗi file.
            - Chế độ preview của thông tin file upload
            #figure(caption: "Chế độ preview file",
                image("../../images/Orderlist_page_preview.png", fit: "contain", width: 50%))
        ]
    ],
    enum.item(2)[
        *Chi tiết giá cả của danh sách đơn hàng*:
        #block(inset:(left:1cm))[
            - Thông tin vị trí người dùng sẽ tiến hành lấy đơn hàng tại khuôn viên của trường.
            - Xác nhận kiểu thanh toán cho danh sách đơn hàng và hiển thị tình trạng có thanh toán được hay không (chi tiết ở mục *2.4.6*).
            - Chi tiết gia cả của danh sách đơn hàng: Tổng giá bao gồm giá cứng và giá sử dụng dịch vụ.
        ]
    ],
    enum.item(3)[
        *Nút xác nhận đặt hàng*: Người dùng xác nhận thanh toán danh sách đơn hàng và được xác nhận thành công.
        #figure(caption: "Chế độ preview file",
                image("../../images/Confirm_page_success.png", fit: "contain", width: 50%))
    ]
)
#pagebreak()

=== Trang thanh toán

- Để truy cập trang này, người dùng đã nhấn vào vùng xác nhận kiểu thanh toán ở trang xác nhận danh sách đơn hàng khi tài khoản của họ không đủ để xác nhận danh sách đơn hàng đó. Vì hệ thống sẽ sử dụng đơn vị coin để thanh toán, chức năng chính của trang thanh toán này sẽ giúp người dùng nạp coin vào tài khoản thông qua tiền mặt dựa vào các phương thức thanh toán khác nhau. 
 #figure(caption: "Giao diện trang thanh toán",
    image("../../images/Wallet_page.png", fit: "contain"))
Các thành phần chính của trang thanh toán:
#enum(
    enum.item(1)[
        *Form xác nhận số tiền muốn nạp*: Lựa chọn mức tiền muốn nạp vào và sau đó được quy đổi ra thành coin của hệ thống.
    ],
    enum.item(2)[
        *Danh sách nền tảng thanh toán*: Người dùng lựa chọn bên thanh toán thứ ba để có thể nạp tiền và quy đổi sang coin trong hệ thống.
    ],
    enum.item(3)[
        *Nút xác nhận nạp tiền*: Người dùng xác nhận nạp tiền và được điều hướng lại trang xác nhận danh sách đơn hàng để thanh toán.
    ]
)
#pagebreak()

=== Trang danh sách đơn hàng có trên hệ thống

Để có thể vào trang này, người dùng đã có thể nhấn vào nút *See more* ở trang chủ hoặc *My order* trên thanh header của hệ thống.
 #figure(caption: "Giao diện trang đơn hàng có trên hệ thống",
    image("../../images/ListOrder_page.png", fit: "contain"))
Các thành phần chính của trang danh sách đơn hàng có trên hệ thống:
#enum(
    enum.item(1)[
        *Lọc danh sách đơn hàng theo trạng thái*: Lọc các đơn hàng theo tiêu chí là trạng thái bao gồm:
        #block(inset:(left:1cm))[
            - All: Tất cả
            - Progressing: Đang trong tiến trình in
            - Ready: Chuẩn bị được in
            - Done: Đã được in xong
            - Cancal: Đã hủy
        ]
    ],
    enum.item(2)[
        *Danh sách nền tảng thanh toán*: Lọc các đơn hàng theo ngày: người dùng sẽ tiến hành chọn ngày bắt đầu và kết thúc và lọc ra những đơn hàng đã được upload trên hệ thống nằm trong khoảng thời gian đó.
         #figure(caption: "Lọc theo đơn hàng theo ngày",
            image("../../images/Filter_day.png", fit: "contain", width: 50%))
    ],
    enum.item(3)[
        *Danh sách đơn hàng trên hệ thống*: Hiển thị danh sách đơn hàng trên hệ thống sau khi được lọc bởi 2 bộ lọc trạng thái đơn hàng và ngày upload.
    ]
)
#pagebreak()

