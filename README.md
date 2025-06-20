# Trigger
# 🎯 Valorant Trigger Bot (AutoHotkey)
# ⚠️ Предупреждение: использование этого скрипта может нарушать правила игры Valorant, что приведёт к бану. Используйте только в образовательных целях и на свой страх и риск.

# 📌 Описание
Данный триггер-бот автоматически нажимает выстрел, когда прицел наводится на противника определённого цвета. Основан на скрипте AutoHotkey и предназначен для обучения, тестов или личных экспериментов.

# 🧠 Принцип работы
Мониторит центр экрана на наличие пикселя нужного цвета (konsa_color)

Проверяет, находится ли этот пиксель внутри заданной области (konsa_box)

При совпадении — симулирует клик мыши

Управляется через горячие клавиши и может быть остановлен/запущен вручную

# ⚙️ Требования
AutoHotkey v1.x

Windows 10/11

Открытый доступ к экрану (без наложений, Fullscreen Borderless режим)

# 🔧 Настройки
Внутри .ahk-файла можно менять следующие параметры:
konsa_box     := 2         ; Размер области вокруг прицела<br>
konsa_sens    := 58        ; Задержка между проверками<br>
konsa_color   := 0xFFFF00  ; Цвет пикселя (в формате 0xRRGGBB)<br>
minDelay      := 2         ; Минимальная задержка перед выстрелом<br>
maxDelay      := 9         ; Максимальная задержка перед выстрелом<br>
sleepDelay    := 120       ; Время сна между итерациями<br>
# Горячие клавиши
| Клавиша    | Действие                        |
| ---------- | ------------------------------- |
| `LAlt`     | Активация (основной hold key)   |
| `LCtrl`    | Альтернативная активация        |
| `Space`    | Альтернативная активация        |
| `XButton2` | Альтернативная активация        |
| `F3`       | Переключение режима             |
| `F4`       | Ещё одно действие (специфичное) |
| `End`      | Остановка скрипта               |
| `Home`     | Перезапуск                      |

# 🚀 Запуск
Установи AutoHotkey

Скачай этот репозиторий

Запусти Триггер Валорант.ahk двойным кликом

Зайди в игру, измени настойки буфера прямого подключения мыши

Используй только в тренеровочном матче или против друзей.

При использовании на официальных серверах возможна блокировка.<br>
Ответственность за это не несёт разработчик.


# ❗ Примечания
Цвет цели (konsa_color) должен соответствовать цвету модели противника.

Лучше всего работает на ярко выраженных цветах (жёлтый, красный, фиолетовый).
# 📄 Лицензия
Проект распространяется на условиях лицензии MIT. Используй ответственно.

# 🛑 Дисклеймер
Данный скрипт предоставляется исключительно в ознакомительных и образовательных целях. Его использование в мультиплеерных играх, таких как Valorant, может нарушать правила и условия использования, установленные разработчиками игры (Riot Games).

Разработчик не несёт ответственности за:

Блокировку игрового аккаунта

Нарушения правил и пользовательских соглашений

Любые убытки, ущерб или последствия, вызванные использованием данного скрипта

Используя данный проект, вы берёте на себя полную ответственность за все возможные последствия.

# 🤝 Вклад в проект
Если у тебя есть идеи, как сделать этот скрипт лучше, умнее или безопаснее — не стесняйся, а действуй. Я искренне рад любому участию и обратной связи. Даже если ты просто заметил опечатку или хочешь предложить новый способ реализации — всё это важно.

Что ты можешь сделать:
🧠 Предложить идею (через Issues)

🔧 Исправить баг

🎯 Улучшить точность или производительность

🛡 Добавить защиту от ложных срабатываний

🌐 Добавить мультиподдержку языка (например, англ + рус)

🧪 Сделать визуальный индикатор, HUD или GUI-меню

Как внести изменения:
Fork — сделай форк репозитория

Создай ветку — git checkout -b feature/твоя_фича

Внеси изменения — и протестируй

Push — отправь в свой репозиторий

Pull Request — оформи PR с понятным описанием

# 💬 Даже простой коммент или “⭐ Star” на GitHub — уже вклад.
Это мотивирует продолжать, улучшать и делиться полезным кодом.

Если у тебя пока нет опыта работы с GitHub — пиши в Issues, помогу разобраться. Главное — не бойся влезать в код, мы все здесь, чтобы учиться и создавать крутые штуки вместе 💻🔥

