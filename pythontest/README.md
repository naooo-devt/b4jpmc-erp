ERP Tkinter Basic Info Form

This small Tkinter application reproduces the look-and-feel of the web dashboard's header and provides a form for entering basic user information (name, birthday, address, email, phone, gender, position, employee ID, notes).

Files:
- `erp_info_form.py` - the main Tkinter application.
- `saved_users.json` - created automatically when saving entries.

Requirements:
- Python 3.8+
- Optional: `tkcalendar` for a date picker. Install with:

```powershell
pip install tkcalendar
```

Run:

```powershell
python pythontest\erp_info_form.py
```

If you don't have `tkcalendar`, the Birthday field will fallback to a plain text entry (format: YYYY-MM-DD).
