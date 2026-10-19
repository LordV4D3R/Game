# 🎫 Phản Hồi Kỹ Thuật NordVPN (KẾT THÚC THÀNH CÔNG RỰC RỠ 100% 🎉)

> [!abstract] **Thông tin Ticket**
> - **Chủ đề:** Khắc phục sự cố Server VN & Lỗi Split Tunneling với Riot Games (LMHT)
> - **Trạng thái:** #status/resolved ✅ **ĐÃ GIẢI QUYẾT TRIỆT ĐỂ**
> - **Thời gian giải quyết xong:** 2026-09-22

---

## 🏆 TỔNG KẾT KẾT QUẢ CUỐI CÙNG

### 1. Vấn đề Tốc độ & Băng thông Server Việt Nam:
- **Kết quả:** Đã phục hồi ngoạn mục lên **Download 337.99 Mbps / Upload 269.42 Mbps** (tiệm cận 100% đường truyền gốc VNPT).
- **Giải pháp đã thực hiện:** Gỡ bỏ sạch bản cũ, dọn dẹp Registry `Installer\Products` và cài đặt bản cập nhật mới nhất **8.12.0.0**.

### 2. Vấn đề Split Tunneling với Liên Minh Huyền Thoại:
- **Kết quả:** Ping trong game khi đang BẬT VPN đã hạ xuống mức hoàn hảo: **2 ms**!
- **Nguyên nhân cốt lõi:** Riot Games phân tách client chọn tướng (`LeagueClient.exe`) và tiến trình chạy trận đấu 3D (`Game\League of Legends.exe`).
- **Giải pháp triệt để:** Thêm đúng file thực thi trong thư mục con: `...\League of Legends\Game\League of Legends.exe` vào danh sách *Don't use VPN for selected apps*.

---

## ✉️ MẪU EMAIL PHẢN HỒI KẾT THÚC TICKET (GỬI CHO JESÚS BARRAGÁN)

Bạn bấm **Reply** email của Jesús Barragán và gửi nội dung này để xác nhận đóng ticket một cách chuyên nghiệp:

```markdown
Subject: Re: Follow-up on Vietnam Server Latency & Split Tunneling issue [RESOLVED]

Hi Jesús,

Thank you very much for your detailed instructions. I am happy to report that all issues have now been completely resolved!

Here is a summary of the resolution:

1. Server Speed & Bandwidth:
Following your clean uninstallation guide, cleaning the registry entry under HKEY_CLASSES_ROOT\Installer\Products, and upgrading to the latest version 8.12.0.0, the bandwidth throttling on the Vietnam nodes has completely disappeared. I am now achieving full speeds of 338 Mbps download and 269 Mbps upload.

2. Split Tunneling with League of Legends:
The bypass issue has also been resolved. For your team's knowledge base regarding Riot Games titles: League of Legends runs its launcher via "LeagueClient.exe", but the actual live match engine runs separately under the subfolder:
".../League of Legends/Game/League of Legends.exe"
Once I added this specific match binary from the "Game" directory to the Split Tunneling whitelist, the traffic successfully bypassed the VPN tunnel. My in-game ping is now at a pristine 2 ms while NordVPN remains connected in the background.

Everything is working perfectly as expected. You may now mark this ticket as completely resolved.

Thank you and the support team for your continuous assistance throughout this process.

Best regards,
An Tran
```

---
*Điều hướng: [[00. Tổng quan - Dashboard]] | [[02. Việc hôm nay (Today)]]*
