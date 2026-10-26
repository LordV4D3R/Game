---
title: "Hệ Thống Kiểm Thử & Checklist Nghiệm Thu Từng Mốc (QA & Verification)"
tags:
  - project/godot-2d-3d
  - category/qa-logs
  - domain/testing
created: 2026-10-21
updated: 2026-10-26
status: active
priority: high
related:
  - "[[00. Tổng quan - Học & Phát Triển Game 2D & 3D (Godot 4)]]"
  - "[[01. Thiết lập Godot 4, VS Code, LSP & Git LFS]]"
  - "[[01. Vật lý 2D, Điều khiển Nhân vật & State Machine]]"
  - "[[01. Autoload (Singletons), EventBus, AudioManager & SceneTransition]]"
  - "[[01. Không gian 3D, Node3D, Camera3D, Ánh sáng & Môi trường]]"
---

# 🧪 Hệ Thống Kiểm Thử & Checklist Nghiệm Thu Từng Mốc (QA & Verification)

> [!TIP] Điều Hướng Hồ Sơ
> - 🧭 **Về Trang Tổng Quan**: [[00. Tổng quan - Học & Phát Triển Game 2D & 3D (Godot 4)]]
> - 🛠️ **Giai đoạn 0 (Setup)**: [[01. Thiết lập Godot 4, VS Code, LSP & Git LFS]] | [[02. Quy trình Non-Code — Nhạc lý (DAW), SFX & Đồ họa 2D-3D]]
> - 🕹️ **Giai đoạn 1 (2D)**: [[01. Vật lý 2D, Điều khiển Nhân vật & State Machine]] | [[02. Giao diện (UI), Hiệu ứng (Juice) & Thiết kế Hướng Dữ Liệu (Data-Driven)]]
> - 🌉 **Giai đoạn 2 (Core Bridge)**: [[01. Autoload (Singletons), EventBus, AudioManager & SceneTransition]] | [[02. Hệ thống Save-Load, Quản lý Resource & Đa ngôn ngữ]]
> - 🧊 **Giai đoạn 3 (3D)**: [[01. Không gian 3D, Node3D, Camera3D, Ánh sáng & Môi trường]] | [[02. Nhập Mô Hình 3D (.glb), Rigging, AnimationTree & Âm Thanh Không Gian 3D]]

---

## 🎯 Tiêu Chuẩn Nghiệm Thu Chung ("Definition of Done" Cho Mỗi Mốc)

Trước khi chuyển từ mốc hiện tại sang mốc tiếp theo (đặc biệt là bước nhảy từ **Game 2D $\rightarrow$ Core Bridge $\rightarrow$ Game 3D**), bạn và AI Agent bắt buộc phải đối chiếu qua 4 chốt chặn chất lượng sau:

| Chốt chặn | Tiêu chí kiểm tra kỹ thuật | Công cụ kiểm tra |
| :--- | :--- | :--- |
| **Code & Kiến trúc** | Không còn cảnh báo vàng/đỏ từ `Error Lens` và Godot Debugger; 100% biến/hàm có Static Typing; có log truy vết rõ ràng. | VS Code (`godot-tools` LSP) + Antigravity Coding Agent |
| **Trải nghiệm trên Godot** | Chạy thử (`F5`/`F6`) ổn định ở `60 FPS`; không bị rò rỉ bộ nhớ (Orphan Nodes = 0 trong tab *Debugger > Monitors*). | Godot Profiler & Monitors |
| **Âm nhạc & SFX** | Nhạc nền loop mượt không bị khựng đầu/cuối; âm lượng đã chuẩn hóa không bị rè (Clipping $> 0\text{ dB}$). | DAW Meter & Godot Audio Bus |
| **Quản lý phiên bản** | Toàn bộ file `.png`, `.ogg`, `.glb` được theo dõi qua **Git LFS**; đã commit theo chuẩn Conventional Commits. | GitHub Desktop / `git lfs status` |

---

## 📋 Bảng Kịch Bản Kiểm Thử Chi Tiết (Test Cases) Theo Từng Giai Đoạn

### Giai Đoạn 1 — Kiểm Thử Game 2D (Physics, FSM, UI & Data-Driven)

| Mã Test | Kịch bản kiểm thử (Scenario) | Loại Test | Kết quả kỳ vọng (Expected Result) | Trạng thái |
| :--- | :--- | :--- | :--- | :---: |
| **TC-2D-01** | Nhân vật chạy ra khỏi mép vực và bấm nhảy trễ `0.1s` (Coyote Time). | Happy Path | Nhân vật vẫn nhảy lên bình thường, State chuyển sang `Jump` và phát `sfx_jump.ogg`. | `[ ]` |
| **TC-2D-02** | Bấm giữ cả 2 phím Trái (`A`) và Phải (`D`) cùng lúc hoặc nháy phím liên tục. | Edge Case | Nhân vật đứng yên (`Idle`) hoặc đổi hướng mượt, không bị kẹt ở animation `Run` tại chỗ. | `[ ]` |
| **TC-2D-03** | Nhân vật nhận sát thương liên tục từ 2 bẫy gai cùng một khung hình. | Edge Case | Thời gian bất tử tạm thời (`Invincibility Frames`) kích hoạt ngay sau đòn đầu tiên, chỉ trừ máu 1 lần. | `[ ]` |
| **TC-2D-04** | Thay đổi chỉ số `damage` trong file `iron_sword.tres` trên Inspector. | Data-Driven | Sát thương trong game cập nhật ngay lập tức mà không cần sửa bất kỳ dòng code GDScript nào. | `[ ]` |

### Giai Đoạn 2 — Kiểm Thử Kiến Trúc Dùng Chung (Autoload, Audio, Save/Load)

| Mã Test | Kịch bản kiểm thử (Scenario) | Loại Test | Kết quả kỳ vọng (Expected Result) | Trạng thái |
| :--- | :--- | :--- | :--- | :---: |
| **TC-CORE-01** | Chuyển cảnh từ `Level2D` sang `Level3D` qua `SceneTransition` trong khi nhạc đang phát. | Happy Path | Màn hình Fade-out/Fade-in mượt; `AudioManager` thực hiện Crossfade sang bài nhạc mới không bị ngắt quãng đột ngột. | `[ ]` |
| **TC-CORE-02** | Kích hoạt 15 hiệu ứng âm thanh va chạm (`play_sfx`) cùng một lúc. | Stress Test | Hệ thống `SFX Pool` tự động luân chuyển các kênh phát, không làm đứng khung hình hay vỡ tiếng. | `[ ]` |
| **TC-CORE-03** | Người chơi bấm "Tiếp tục (Load Game)" khi chưa từng lưu game hoặc file `.json` bị xóa/hỏng. | Error Handling | `SaveManager` bắt lỗi an toàn, ghi log `[WARN][SaveManager]`, và tự động khởi tạo dữ liệu mặc định thay vì làm crash game. | `[ ]` |

### Giai Đoạn 3 — Kiểm Thử Game 3D (Camera3D, AnimationTree & Spatial Audio)

| Mã Test | Kịch bản kiểm thử (Scenario) | Loại Test | Kết quả kỳ vọng (Expected Result) | Trạng thái |
| :--- | :--- | :--- | :--- | :---: |
| **TC-3D-01** | Xoay `Camera3D` ép sát vào góc tường hẹp hoặc dưới gầm cầu thang. | Edge Case | `SpringArm3D` tự động thu ngắn khoảng cách, tuyệt đối không để Camera nhìn xuyên qua mặt sau của tường. | `[ ]` |
| **TC-3D-02** | Nhân vật 3D vừa chạy chéo vừa bấm nút Tấn công (`OneShot` kết hợp `BlendSpace2D`). | Happy Path | Chân vẫn chạy mượt theo hướng di chuyển trong khi thân trên thực hiện động tác vung kiếm (`Filter Bones` hoạt động đúng). | `[ ]` |
| **TC-3D-03** | Đứng cạnh nguồn phát `AudioStreamPlayer3D` (lửa trại) và xoay Camera 360 độ. | Spatial Audio | Âm thanh chuyển dịch rõ ràng giữa tai trái và tai phải, nhỏ dần khi đi ra xa quá bán kính `Max Distance`. | `[ ]` |

---

## 📓 Nhật Ký Tiến Độ & Ghi Chú Thực Hành (Living Log)

> [!important] **Cách sử dụng Nhật ký này:**
> Mỗi khi hoàn thành một phiên làm việc (Code / Thao tác Godot / Soạn nhạc / Làm Asset), hãy yêu cầu AI Agent ghi tóm tắt kết quả, các lỗi đã xử lý và bài học rút ra vào bảng dưới đây.

| Ngày cập nhật | Mốc thực hiện | Hạng mục hoàn thành (`[Code]` / `[Godot]` / `[Nhạc]` / `[Asset]`) | Ghi chú kỹ thuật / Commit ID |
| :---: | :--- | :--- | :--- |
| `2026-10-21` | **Khởi tạo Dự án** | Thiết lập toàn bộ cấu trúc Hồ sơ Obsidian (5 thư mục chuyên mục, 8 tệp lộ trình & checklist phân vai). | Khởi tạo lộ trình chuẩn `GEMINI.md` |
| `2026-10-26` | **Cập nhật Công cụ** | Điều chỉnh quy trình: dùng **VS Code** để xem/debug code (LSP `6005`) và **Antigravity Coding Agent** để lập trình tự động. | Đồng bộ toàn bộ hồ sơ |
| *Chờ cập nhật...* | **Mốc 0 — Setup** | `[ ]` Cài đặt Godot 4.x, VS Code Extensions, Git LFS & DAW. | — |
