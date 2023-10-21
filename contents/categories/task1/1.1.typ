= Requirement elicitation

== Giới thiệu về bối cảnh miền của hệ thống phát triển dịch vụ in ấn thông minh. Những bên liên quan, nhu cầu hiện tại và lợi ích SPSS mang lại cho từng bên liên quan

=== _Giới thiệu về bối cảnh miền của dịch vụ in ấn thông minh cho sinh viên đại học Bách Khoa thành phố Hồ Chí Minh_
Bối cảnh miền của một hệ thống bao gồm miền vấn đề (problem domain) và miền ứng dụng (application domain) . Dịch vụ in ấn thông minh (SPSS) là một hệ thống được phát triển bởi trường Đại học Bách Khoa Thành phố Hồ Chí Minh nhằm cung cấp cho sinh viên một dịch vụ in ấn tiện lợi, an toàn và nhanh chóng nhất với số lượng nhỏ. Dịch vụ có thể sẽ được cung cấp dưới hai dạng: tự phục vụ và truyền thống. Mọi sinh viên đều được khuyến khích sử dụng dịch vụ này nếu bản thân sinh viên gặp phải những vấn đề khó khăn khi sử dụng dịch vụ in truyền thống tại trường như sau (problem domain):
#block(inset:(left:1cm))[
    - Không chủ động thời gian vì phụ thuộc vào các tiệm in.
    - Không tận dụng được thời gian di chuyển đến tiệm in.
    - Vấn đề bảo mật thông tin khi sử dụng dịch vụ truyền thống như virus.
    - Không bảo đảm về phương thức thanh toán phù hợp.
    - Giá thành cao hơn so với dịch vụ in ấn truyền thông ngoài trường.
]

Miền ứng dụng (application domain) dùng để chỉ phạm vi chức năng hoặc lĩnh vực cụ thể mà hệ thống được thiết kế để yêu cầu phục vụ. Đối với SSPS, chúng ta có phạm vi chức năng và lĩnh vực như sau:
#block(inset:(left:1cm))[
    - Phạm vi lĩnh vực
    #block(inset:(left:1.2cm))[
        \u{2218} Giáo dục: Hỗ trợ in ấn tài liệu cho sinh viên, giảng viên.
        #linebreak()
        \u{2218} Kinh doanh: Những người phát triển hệ thống kiếm lợi từ việc cung cấp dịch vụ.
    ]
    - Phạm vi chức năng
    #block(inset:(left:1.2cm))[
        \u{2218} In ấn tài liệu của sinh viên giảng viên đa dạng từ tài liệu học tập, giáo trình, đề thi, nghiêm cứu khoa học, bảng điểm, chứng chỉ,...
        #linebreak()
        \u{2218} Đóng gói và bao bì an toàn, bảo mật tài liệu.
        #linebreak()
        \u{2218} Giao hàng và chuyển phát với tốc độ nhanh (không băt buộc).
    ]
]


===  _Những bên liên quan và nhu cầu hiện tại_
Stakeholder - một thuật ngữ dùng để chỉ bất kỳ người hay tổ chức mà bị ảnh hưởng bởi hệ thống và có lợi ích chính đáng. Hệ thống dịch vụ in ấn thông minh của trường (SSPS) gồm các bên liên quan sau:
#block(inset:(left:1cm))[
    - Sinh viên, giảng viên trường đại học Bách Khoa: sử dụng SSPS để phục vụ việc in ấn tài liệu theo nhu cầu một cách thuận tiện và nhanh chóng.
    - SPSO - Quản lý dịch vụ in ấn sinh viên: có nhu cầu nhằm nắm rõ được hoạt động in ấn của sinh viên như thói quen, sở thích, tần suất và quản lý cơ sở vật chất, trang thiết bị.
    - Trường đại học bách khoa TPHCM (HCMUT): tích hợp SSPS vào hệ thống của trường để theo dõi và nắm bắt hoạt động in ấn của sinh viên và kiếm thêm lợi nhuận.
    - Người giám sát máy in và thực hiện in ấn (trong trường hợp triển khai theo kiểu truyền thống): nhu cầu kiếm thêm thu nhập (nhân viên hỗ trợ của trường) hoặc ngày CTXH/điểm rèn luyện (sinh viên của trường).
    - Nhân viên IT: nguyện vọng phát triển một phần mềm phù hợp để giải quyết vấn đề in ấn của sinh viên.
    - Đại lý cung cấp giấy, mực in và kỹ thuật viên bảo trì: nhu cầu tìm kiếm một nơi tiêu thụ sản phẩm/dịch vụ, một đối tác ổn định và lâu dài.
    - Các hệ thống thanh toán online: có nhu cầu thu hút thêm người sử dụng và thu được hoa hồng thông qua các kênh thanh toán.
]

===  _Lợi ích SPSS mang lại cho những bên liên quan_
Các bên liên quan (stakeholder) khi tham gia vào một hệ thống bên cạnh việc đáp ứng nhu cầu cấp thiết của khách hàng thì họ đều cần một lợi ích chính đáng. Lợi ích của các bên liên quan trong SSPS:
#block(inset:(left:1cm))[
    - Sinh viên sử dụng dịch vụ: in ấn tài liệu thuận tiện, chủ động về thời gian và tiết kiệm chi phí in với các chương trình giảm giá và trợ giá từ trường.
    - Trường đại học Bách Khoa: cải thiện chất lượng cơ sở vật chất cho sinh viên, thu lợi nhuận thông qua việc quản lý và cung cấp dịch vụ in ấn.
    - Người quản lý máy in và thực hiện in ấn: Kiếm thêm thu nhập hoặc ngày CTXH/ĐRL ngoài giờ.
    - Nhân viên IT: phát triển và duy trì hệ thống giúp họ có cơ hội phát triển lớn hơn về nghề nghiệp trong tương lai.
    - Đại lý cung cấp giấy, mực in và kỹ thuật viên bảo trì: Kiếm thêm lợi nhuận và có được khách hàng lâu dài thông qua sự hợp tác của đại lý và nhà trường.
    - Các hệ thống thanh toán online: cung cấp thêm dịch vụ để thu hút thêm người sử dụng, tạo ra hoa hồng thông qua các giao dịch.
]
