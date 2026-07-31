# Root Cause Analysis

## 1. Overview

Root Cause Analysis được thực hiện nhằm xác định các nguyên nhân chính dẫn đến những mô hình và xu hướng đã được phát hiện trong báo cáo Cross Analysis. Kết quả của Root Cause Analysis sẽ là cơ sở để xây dựng Recommendation Framework và hỗ trợ các bên liên quan đưa ra quyết định phù hợp nhằm giảm thiểu tai nạn giao thông nghiêm trọng.

---

# 2. Root Cause Analysis

## 2.1 Business Question 1

### Business Question

Trong điều kiện thời tiết xấu kết hợp với ánh sáng yếu, tỷ lệ tai nạn nghiêm trọng tăng bao nhiêu phần trăm so với điều kiện bình thường?

### Observation

- Tỷ lệ tai nạn trong điều kiện xấu (**Bad Condition**) biến động cực kỳ mạnh qua các năm và thường xuyên vượt ngưỡng điều kiện bình thường, đạt đỉnh cao nhất vào năm **2023 (khoảng 6.6%)**. Tuy nhiên, trong năm **2015** và **2025** không ghi nhận tỷ lệ tai nạn nghiêm trọng.
- Các vụ tai nạn xảy ra trên bề mặt đường bất lợi chiếm khoảng **23.83%** tổng số vụ tai nạn trong giai đoạn **2013–2025**, với tỷ lệ cao nhất được ghi nhận vào năm **2022 (~26.27%)**.
- Trong cùng thời điểm, số vụ tai nạn trong thời tiết xấu chỉ ghi nhận khoảng **1,163 vụ**, trong đó khoảng **0.17%** vụ tai nạn gây tử vong.
- Năm **2022**, **Critical Priority Rate** tăng lên **0.20%**, đồng thời ghi nhận tỷ lệ **100%** vụ tai nạn nghiêm trọng khi bề mặt đường xuất hiện nhiều đất cát. Các điều kiện bề mặt đường còn lại dao động từ **1–3%**.

### Identified Root Cause

Các vụ tai nạn xảy ra trên bề mặt đường bất lợi chủ yếu liên quan đến sự suy giảm khả năng kiểm soát phương tiện khi điều kiện mặt đường và thời tiết không thuận lợi xuất hiện cùng lúc. Những điều kiện này làm giảm độ bám của mặt đường và tăng khoảng cách phanh, khiến người lái khó xử lý các tình huống bất ngờ.

Mặc dù số vụ tai nạn trong điều kiện thời tiết xấu không chiếm tỷ trọng lớn trong toàn bộ tập dữ liệu, các vụ tai nạn xảy ra trong điều kiện này thường liên quan đến các yếu tố môi trường bất lợi, làm tăng khả năng xảy ra va chạm nghiêm trọng.

### Supporting Evidence

- **Adverse Surface Incident Rate:** 23.83% tổng số vụ tai nạn xảy ra trên bề mặt đường bất lợi.
- Ghi nhận **1,163 vụ** tai nạn trong điều kiện thời tiết xấu.
- **Crash Severity Distribution by Road Surface** cho thấy tỷ lệ tai nạn trên bề mặt đường bất lợi tăng cao trong năm **2022 (~26.27%)**.
- **Severe Accident Rate: Normal vs High-Risk Conditions** cho thấy tỷ lệ tai nạn nghiêm trọng trong điều kiện khắc nghiệt kèm ánh sáng yếu biến động mạnh so với điều kiện bình thường, đồng thời không ghi nhận tỷ lệ tai nạn nghiêm trọng trong điều kiện này vào năm **2015** và **2025**.

---

## 2.2 Business Question 2

### Business Question

Tổ hợp yếu tố môi trường nào tạo ra mức độ rủi ro cao nhất?

### Observation

- Heatmap ghi nhận tổ hợp **SEVERE CROSSWIND** và **DARKNESS, LIGHTED ROAD** có tỷ lệ tai nạn nghiêm trọng cao nhất (**~17%**) trong giai đoạn **2013–2025**.
- Đến giữa tháng **01/2025**, tổ hợp **BLOWING SNOW** và **DAYLIGHT** ghi nhận **Severe Rate = 100%**.

### Identified Root Cause

Các yếu tố môi trường thường không tác động độc lập mà ảnh hưởng đồng thời đến khả năng quan sát, khả năng điều khiển phương tiện và thời gian phản ứng của người lái xe.

Trong điều kiện gió mạnh kết hợp với ánh sáng hạn chế, người lái khó duy trì hướng di chuyển ổn định và khó phát hiện các tình huống nguy hiểm trên đường. Khi nhiều yếu tố bất lợi xuất hiện cùng lúc, khả năng xử lý tình huống giảm đáng kể, từ đó làm tăng mức độ nghiêm trọng của tai nạn.

Đối với tổ hợp **BLOWING SNOW** và **DAYLIGHT**, mặc dù ghi nhận **Severe Rate** rất cao trong dữ liệu năm **2025**, kết quả này cần được xem xét cùng với số lượng vụ tai nạn thực tế trước khi đưa ra kết luận tổng quát.

### Supporting Evidence

- **Severe Crash Rate Interaction Matrix (Heatmap)** cho thấy tổ hợp **SEVERE CROSSWIND + DARKNESS, LIGHTED ROAD** có **Severe Rate** cao nhất (**~17%**).
- **Peak Risk Window (KPI)** xác định các tổ hợp điều kiện môi trường có mức độ rủi ro nổi bật.

---

## 2.3 Business Question 3

### Business Question

Những hành vi nào của người lái vẫn là nguyên nhân chính dẫn đến tai nạn nghiêm trọng trong điều kiện môi trường thuận lợi?

### Observation

- Số vụ tai nạn trong điều kiện thời tiết thuận lợi cao gấp khoảng **ba lần** so với điều kiện thời tiết bất lợi. **Human Error Rate** đạt khoảng **67.25%** trong toàn bộ giai đoạn phân tích.
- Trong điều kiện môi trường thuận lợi, **UNABLE TO DETERMINE** và **FAILING TO YIELD RIGHT-OF-WAY** là hai nguyên nhân được ghi nhận nhiều nhất. Trong điều kiện môi trường bất lợi, **WEATHER** xuất hiện trong nhóm các nguyên nhân có số vụ tai nạn cao.

### Identified Root Cause

Trong điều kiện thời tiết và môi trường thuận lợi, người tham gia giao thông thường có xu hướng chủ quan và đánh giá thấp các rủi ro khi di chuyển. Điều này có thể làm giảm sự tập trung, tăng các hành vi như không nhường đường, xử lý tình huống chậm hoặc không tuân thủ đầy đủ quy tắc giao thông.

Ngoài ra, tỷ lệ cao của nhóm nguyên nhân **UNABLE TO DETERMINE** cho thấy nhiều vụ tai nạn chưa được xác định rõ nguyên nhân cụ thể. Điều này phản ánh hạn chế trong quá trình thu thập hoặc ghi nhận dữ liệu, đồng thời cho thấy vẫn còn những yếu tố ảnh hưởng chưa được mô hình hóa trong bộ dữ liệu hiện tại.

### Supporting Evidence

- **Human Error Rate (67.25%)** cho thấy phần lớn các vụ tai nạn có liên quan đến yếu tố con người.
- **Top 10 Human Errors in Favorable Conditions** ghi nhận **UNABLE TO DETERMINE** và **FAILING TO YIELD RIGHT-OF-WAY** là hai nguyên nhân phổ biến nhất.
- **Top 10 Behavioral Risks in Adverse Conditions** cho thấy nguyên nhân **WEATHER** xuất hiện trong nhóm các nguyên nhân có số vụ tai nạn cao khi điều kiện môi trường trở nên bất lợi.

---

## 2.4 Business Question 4

### Business Question

Khu vực hoặc kịch bản nào cần được ưu tiên đầu tư nguồn lực để giảm thiểu tai nạn nghiêm trọng?

### Observation

- Ba loại hạ tầng giao thông có số vụ tai nạn cao nhất là **NOT DIVIDED**, **FOUR WAY** và **DIVIDED – W/MEDIAN BARRIER**, trong đó **NOT DIVIDED** và **FOUR WAY** đều ghi nhận trên **40,000 vụ** tai nạn trong giai đoạn phân tích.
- Theo **Infrastructure Blackspot Identification Matrix**, chỉ có **NOT DIVIDED** vượt đồng thời ngưỡng trung bình của **Total Accident** và **Avg EPDO Score**.

### Identified Root Cause

Các vụ tai nạn tập trung nhiều tại loại đường **NOT DIVIDED**, cho thấy đây là khu vực có mật độ lưu thông lớn và thường xuyên phát sinh các tình huống xung đột giữa các phương tiện. Khi lưu lượng giao thông tăng cao, số lượng điểm giao cắt, hoạt động chuyển hướng hoặc thay đổi làn đường cũng làm tăng khả năng xảy ra va chạm.

Bên cạnh đó, **NOT DIVIDED** là loại hạ tầng duy nhất vượt đồng thời ngưỡng trung bình của **Total Accident** và **Avg EPDO Score**. Điều này cho thấy không chỉ có số lượng tai nạn cao mà mức độ nghiêm trọng của các vụ tai nạn tại loại đường này cũng cao hơn mặt bằng chung, khiến đây trở thành khu vực cần được ưu tiên phân tích trong các hoạt động đảm bảo an toàn giao thông.

### Supporting Evidence

- **Infrastructure Blackspot Identification Matrix (Scatter Plot)** cho thấy chỉ **NOT DIVIDED** nằm trong vùng vượt cả ngưỡng **Total Accident** và **Avg EPDO Score**.
- **Most Accident-Prone Trafficway (KPI)** xác định **NOT DIVIDED** là loại đường có số vụ tai nạn cao nhất.
- **Priority Trafficways (KPI)** ghi nhận chỉ một loại hạ tầng được xếp vào nhóm ưu tiên cải thiện.
```