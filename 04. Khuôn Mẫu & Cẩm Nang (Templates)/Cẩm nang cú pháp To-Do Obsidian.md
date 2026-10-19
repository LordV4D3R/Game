# 📖 Cẩm Nang Cú Pháp To-Do List Cho Obsidian

Tài liệu này tổng hợp toàn bộ các cú pháp Markdown, Emoji, Tag và Truy vấn giúp bạn khai thác tối đa sức mạnh quản lý công việc trong Obsidian.

---

## 1. Cú pháp Checkbox cơ bản & mở rộng

Trong Obsidian, bạn chỉ cần gõ `- [ ]` rồi nhấn phím Cách (Space) để tạo một ô công việc (Task).

| Cú pháp | Hiển thị / Trạng thái | Ý nghĩa |
| :--- | :--- | :--- |
| `- [ ] Việc A` | ⬜ Chưa làm (Incomplete) | Việc cần thực hiện |
| `- [x] Việc B` | ✅ Đã hoàn thành (Done) | Việc đã làm xong |
| `- [/] Việc C` | 🌓 Đang tiến hành (In Progress) | Đang làm dở dang |
| `- [-] Việc D` | ➖ Đã hủy (Cancelled) | Không cần làm nữa |
| `- [>] Việc E` | ⏩ Đã hoãn / Dời lại (Deferred) | Chuyển sang ngày khác |
| `- [!] Việc F` | ❗ Khẩn cấp / Quan trọng (Important) | Cần ưu tiên xử lý gấp |
| `- [?] Việc G` | ❓ Cần làm rõ / Hỏi lại (Question) | Cần tìm hiểu thêm thông tin |
| `- [*] Việc H` | ⭐ Đánh dấu sao (Star) | Mục tiêu nổi bật |
| `- [i] Việc I` | ℹ️ Thông tin bổ sung (Info) | Ghi chú đi kèm |

> [!TIP] Mẹo phím tắt trong Obsidian
> - Đặt con trỏ vào dòng bất kỳ và nhấn `Ctrl + Enter` (hoặc `Cmd + Enter` trên Mac) để chuyển đổi nhanh giữa các trạng thái checkbox.

---

## 2. Hệ thống Nhãn dán (Tags) quản lý công việc

Sử dụng Tag giúp bạn lọc, tìm kiếm và nhóm các công việc dễ dàng:

### Mức độ ưu tiên (Priority)
- `#priority/p1` hoặc `#priority/cao`: Khẩn cấp & Quan trọng (Cần làm ngay).
- `#priority/p2` hoặc `#priority/trung-binh`: Quan trọng nhưng không gấp.
- `#priority/p3` hoặc `#priority/thap`: Việc nhỏ, làm khi rảnh.

### Trạng thái (Status)
- `#status/todo`: Việc đang chờ làm.
- `#status/doing`: Đang trong tiến trình làm.
- `#status/waiting`: Đang chờ phản hồi từ người khác / đối tác.
- `#status/done`: Đã giải quyết xong.

### Bối cảnh thực hiện (Context / Địa điểm)
- `#context/cong-ty`: Chỉ làm được khi ở nơi làm việc / văn phòng.
- `#context/nha`: Làm tại nhà.
- `#context/dien-thoai`: Việc gọi điện, nhắn tin.
- `#context/may-tinh`: Việc cần mở laptop / PC.

---

## 3. Cú pháp Thời gian & Lịch trình (Chuẩn Plugin Tasks)

Nếu bạn sử dụng Obsidian với plugin **Tasks** (hoặc muốn ghi chú chuẩn hoá), hãy sử dụng các Emoji quy ước sau:

- `📅 YYYY-MM-DD` : **Ngày hết hạn (Due Date)** - Hạn chót phải hoàn thành task.
- `⏳ YYYY-MM-DD` : **Ngày bắt đầu theo kế hoạch (Scheduled Date)** - Ngày dự định làm việc.
- `🛫 YYYY-MM-DD` : **Ngày bắt đầu thực tế (Start Date)** - Ngày mở đầu công việc.
- `➕ YYYY-MM-DD` : **Ngày tạo (Created Date)** - Ngày phát sinh task.
- `✅ YYYY-MM-DD` : **Ngày hoàn thành (Done Date)** - Ngày đánh dấu xong việc.
- `🔁 every [day/week/month]` : **Lặp lại (Recurrence)** - Việc lặp lại định kỳ.

### Mức ưu tiên theo Emoji:
- `🔺` : Ưu tiên cao nhất (Highest)
- `⏫` : Ưu tiên cao (High)
- `🔼` : Ưu tiên vừa (Medium)
- `🔽` : Ưu tiên thấp (Low)
- `⏬` : Ưu tiên thấp nhất (Lowest)

### Ví dụ kết hợp thực tế:
- `- [ ] Nộp báo cáo tài chính tháng 8 #priority/cao 📅 2026-08-30 ⏳ 2026-08-28 🔺`
- `- [ ] Tập thể dục 30 phút #context/nha 🔁 every day 📅 2026-08-28`
- `- [/] Lập kế hoạch dự án Website mới #project/web 🛫 2026-08-25 📅 2026-09-05`
- `- [x] Mua sách chuyên ngành #context/nha ➕ 2026-08-20 ✅ 2026-08-28`

---

## 4. Tự động hóa với Plugin (Dataview & Tasks)

Khi bạn cài đặt các Community Plugin trong Obsidian:

### Truy vấn mẫu cho Plugin **Tasks**:
`````markdown
```tasks
not done
due before tomorrow
sort by priority
```
`````

### Truy vấn mẫu cho Plugin **Dataview**:
`````markdown
```dataview
TASK
WHERE !completed AND contains(tags, "priority/cao")
SORT file.name ASC
```
`````

---

## 5. Cú pháp Khối nổi bật (Callouts) cho To-Do

Obsidian hỗ trợ hiển thị đẹp mắt thông qua Callouts:

> [!todo] Việc quan trọng cần nhớ
> - [ ] Chuẩn bị tài liệu họp sáng mai
> - [ ] Gửi email xác nhận hợp đồng

> [!check] Việc đã hoàn thành tốt
> - [x] Chạy bộ 5km buổi sáng
> - [x] Đọc 20 trang sách

---

*Xem thêm bảng điều khiển trung tâm tại [[00. Tổng quan - Dashboard]].*
