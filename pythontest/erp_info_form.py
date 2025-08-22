import json
import os
import tkinter as tk
from tkinter import ttk, messagebox

# Optional date picker support
try:
    from tkcalendar import DateEntry
    HAS_DATEPICKER = True
except Exception:
    HAS_DATEPICKER = False

APP_TITLE = "ERP - Basic Info Form"
DATA_FILE = os.path.join(os.path.dirname(__file__), 'saved_users.json')


class ERPFormApp(tk.Tk):
    def __init__(self, role="Employee"):
        super().__init__()
        self.title(APP_TITLE)
        self.geometry('1100x700')
        self.minsize(1000, 600)
        self.configure(bg="#f1f5f9")

        self.role = role
        self._build_ui()

    def _build_ui(self):
        # Sidebar
        sidebar = tk.Frame(self, bg="#0b1220", width=220)
        sidebar.pack(side='left', fill='y')
        sidebar.pack_propagate(False)

        logo = tk.Label(sidebar, text="JP", bg="#0b1220", fg='white', font=(None, 20, 'bold'), width=6, height=2)
        logo.pack(pady=(14, 4))
        company = tk.Label(sidebar, text="James Polymer", bg="#0b1220", fg='#cbd5e1', font=(None, 10, 'bold'))
        company.pack(padx=8)

        # Menu (non-functional for this teaching GUI)
        menu_items = ['Dashboard', 'Inventory', 'Finances', 'Human Resources', 'Customer Service', 'Reports']
        for it in menu_items:
            lbl = tk.Label(sidebar, text=it, bg="#0b1220", fg='#cbd5e1', anchor='w', padx=16)
            lbl.pack(fill='x', pady=2)

        # Main area
        main = tk.Frame(self, bg="#f8fafc")
        main.pack(side='left', fill='both', expand=True)

        # Header
        header = tk.Frame(main, bg="#ffffff", height=70)
        header.pack(fill='x')
        header.pack_propagate(False)

        menu_btn = tk.Button(header, text="☰", bg="#ffffff", bd=0, font=(None, 18), fg="#111827")
        menu_btn.pack(side='left', padx=14)
        title = tk.Label(header, text="Dashboard", bg="#ffffff", fg="#0f172a", font=(None, 18, 'bold'))
        title.pack(side='left', padx=6)

        header_right = tk.Frame(header, bg="#ffffff")
        header_right.pack(side='right', padx=12)
        add_btn = tk.Button(header_right, text='Add Employee', bg='#10b981', fg='white', command=self.open_add_modal)
        add_btn.pack(side='left', padx=(0, 8))
        view_btn = tk.Button(header_right, text='View Entries', bg='#2563eb', fg='white', command=self.open_view_modal)
        view_btn.pack(side='left', padx=(0, 8))
        role_frame = tk.Frame(header_right, bg="#ffffff")
        role_frame.pack(side='left')
        role_icon = tk.Label(role_frame, text="👤", bg="#ffffff", font=(None, 14))
        role_icon.pack(side='left')
        role_label = tk.Label(role_frame, text=self.role, bg="#ffffff", fg="#475569", font=(None, 11, 'bold'))
        role_label.pack(side='left', padx=(6, 0))

        # Content
        content = tk.Frame(main, bg="#f8fafc")
        content.pack(fill='both', expand=True, padx=12, pady=12)

        # Stat cards (visual only)
        stats_frame = tk.Frame(content, bg="#f8fafc")
        stats_frame.pack(fill='x')

        def stat_card(parent, title, subtitle, value, color='#16a34a'):
            card = tk.Frame(parent, bg='white', bd=1, relief='flat')
            card.pack(side='left', padx=6, pady=6, expand=True, fill='both')
            tk.Label(card, text=title, bg='white', fg='#334155', font=(None, 10, 'bold')).pack(anchor='nw', padx=10, pady=(8, 0))
            tk.Label(card, text=subtitle, bg='white', fg='#64748b', font=(None, 9)).pack(anchor='nw', padx=10)
            tk.Label(card, text=value, bg='white', fg=color, font=(None, 20, 'bold')).pack(anchor='w', padx=10, pady=8)
            return card

        stat_card(stats_frame, 'Materials In', 'This month', '15,500 Bags', '#16a34a')
        stat_card(stats_frame, 'Materials Out', 'This month', '3,200 Bags', '#f97316')
        stat_card(stats_frame, 'Low Stock Items', 'Needs attention', '7', '#ef4444')

        # Tables placeholders
        table_frame = tk.Frame(content, bg="#f8fafc")
        table_frame.pack(fill='both', expand=True, pady=(12, 0))

        left_table = tk.Frame(table_frame, bg='white', bd=1)
        left_table.place(relx=0, rely=0, relwidth=0.62, relheight=0.5)
        tk.Label(left_table, text='Critical Materials', bg='white', fg='#0f172a', font=(None, 11, 'bold')).pack(anchor='nw', padx=10, pady=8)
        cols = ('Material', 'Code/Color', 'Stock', 'Location', 'Status')
        tree1 = ttk.Treeview(left_table, columns=cols, show='headings', height=6)
        for c in cols:
            tree1.heading(c, text=c)
        tree1.pack(fill='both', expand=True, padx=8, pady=(0, 8))
        sample_rows = [
            ('PP PROPILINAS', 'PP-001 (White)', '15,500 kg', 'Plant 1', 'Normal'),
            ('HIPS H-IMPACT', 'HIPS-005 (White)', '3 kg', 'Plant 1', 'Critical'),
        ]
        for r in sample_rows:
            tree1.insert('', 'end', values=r)

        right_table = tk.Frame(table_frame, bg='white', bd=1)
        right_table.place(relx=0.64, rely=0, relwidth=0.36, relheight=0.5)
        tk.Label(right_table, text='Recent Transactions', bg='white', fg='#0f172a', font=(None, 11, 'bold')).pack(anchor='nw', padx=10, pady=8)
        cols2 = ('Date', 'Material', 'Type', 'Qty', 'Location', 'Balance')
        tree2 = ttk.Treeview(right_table, columns=cols2, show='headings', height=6)
        for c in cols2:
            tree2.heading(c, text=c)
        tree2.pack(fill='both', expand=True, padx=8, pady=(0, 8))
        sample_tx = [
            ('07/23/2025', 'ABS', 'IN', '3 Bags', 'Plant 1', '3'),
            ('05/30/2025', 'HIPS', 'OUT', '4 Bags', 'Plant 1', '0'),
        ]
        for r in sample_tx:
            tree2.insert('', 'end', values=r)

        footer = tk.Label(self, text='James Polymer Manufacturing Corp', bg='#f8fafc', fg='#94a3b8')
        footer.pack(side='bottom', pady=6)

    def open_add_modal(self):
        FormModal(self, role=self.role)

    def open_view_modal(self):
        ViewEntriesModal(self)


class FormModal(tk.Toplevel):
    def __init__(self, parent, role='Employee'):
        super().__init__(parent)
        self.parent = parent
        self.role = role
        self.title('Add Employee - Basic Info')
        self.geometry('680x560')
        self.configure(bg='#f8fafc')

        self.entries = {}
        self._build_modal()

    def _build_modal(self):
        header = tk.Frame(self, bg='#ffffff', height=60)
        header.pack(fill='x')
        tk.Label(header, text='Add Employee', bg='#ffffff', fg='#0f172a', font=(None, 14, 'bold')).pack(side='left', padx=12, pady=10)

        body = tk.Frame(self, bg='#f8fafc')
        body.pack(fill='both', expand=True, padx=12, pady=8)

        labels = [
            ('First Name', 'first_name'),
            ('Last Name', 'last_name'),
            ('Birthday', 'birthday'),
            ('Address', 'address'),
            ('Email', 'email'),
            ('Phone', 'phone'),
            ('Gender', 'gender'),
            ('Position', 'position'),
            ('Employee ID', 'employee_id'),
        ]

        fields = tk.Frame(body, bg='#f8fafc')
        fields.pack(fill='both', expand=True)

        for i, (label_text, key) in enumerate(labels):
            lbl = tk.Label(fields, text=label_text, bg='#f8fafc')
            lbl.grid(row=i, column=0, sticky='w', padx=6, pady=6)
            if key == 'birthday' and HAS_DATEPICKER:
                widget = DateEntry(fields, date_pattern='yyyy-mm-dd')
            elif key == 'address':
                widget = tk.Text(fields, height=3, width=32)
            elif key == 'gender':
                widget = ttk.Combobox(fields, values=['Male', 'Female', 'Other'], state='readonly')
                widget.set('Male')
            else:
                widget = tk.Entry(fields)
            widget.grid(row=i, column=1, sticky='ew', padx=6, pady=6)
            fields.grid_columnconfigure(1, weight=1)
            self.entries[key] = widget

        notes_lbl = tk.Label(body, text='Notes', bg='#f8fafc')
        notes_lbl.pack(anchor='nw', padx=12)
        self.notes = tk.Text(body, height=5)
        self.notes.pack(fill='x', padx=12, pady=(0, 12))

        btns = tk.Frame(body, bg='#f8fafc')
        btns.pack(fill='x', padx=12, pady=6)
        save_btn = tk.Button(btns, text='Save', bg='#2563eb', fg='white', command=self.save)
        save_btn.pack(side='left')
        clear_btn = tk.Button(btns, text='Clear', command=self.clear_form)
        clear_btn.pack(side='left', padx=8)

    def _get_field_value(self, widget):
        if isinstance(widget, tk.Text):
            return widget.get('1.0', 'end').strip()
        elif HAS_DATEPICKER and 'DateEntry' in globals() and isinstance(widget, DateEntry):
            return widget.get_date().isoformat()
        else:
            return widget.get().strip()

    def save(self):
        data = {}
        for key, widget in self.entries.items():
            data[key] = self._get_field_value(widget)
        data['notes'] = self.notes.get('1.0', 'end').strip()

        if not data.get('first_name') and not data.get('last_name'):
            messagebox.showwarning('Validation', 'Please provide at least a first name or a last name.')
            return

        existing = []
        if os.path.exists(DATA_FILE):
            try:
                with open(DATA_FILE, 'r', encoding='utf-8') as f:
                    existing = json.load(f)
            except Exception:
                existing = []
        existing.append(data)
        try:
            with open(DATA_FILE, 'w', encoding='utf-8') as f:
                json.dump(existing, f, indent=2)
        except Exception as e:
            messagebox.showerror('Save Error', f'Could not save data: {e}')
            return

        messagebox.showinfo('Saved', 'User information saved successfully.')
        self.destroy()

    def clear_form(self):
        for key, widget in self.entries.items():
            if isinstance(widget, tk.Text):
                widget.delete('1.0', 'end')
            else:
                widget.delete(0, 'end')
        self.notes.delete('1.0', 'end')
        if 'gender' in self.entries and isinstance(self.entries['gender'], ttk.Combobox):
            self.entries['gender'].set('Male')


class ViewEntriesModal(tk.Toplevel):
    def __init__(self, parent):
        super().__init__(parent)
        self.parent = parent
        self.title('Saved Entries')
        self.geometry('920x560')
        self.configure(bg='#f8fafc')

        self.entries = []
        self._build_ui()
        self._load_entries()

    def _build_ui(self):
        header = tk.Frame(self, bg='#ffffff', height=60)
        header.pack(fill='x')
        tk.Label(header, text='Saved Entries', bg='#ffffff', fg='#0f172a', font=(None, 14, 'bold')).pack(side='left', padx=12, pady=10)

        body = tk.Frame(self, bg='#f8fafc')
        body.pack(fill='both', expand=True, padx=12, pady=8)

        left = tk.Frame(body, bg='#f8fafc')
        left.pack(side='left', fill='both', expand=True)
        cols = ('First Name', 'Last Name', 'Employee ID', 'Email', 'Phone')
        self.tree = ttk.Treeview(left, columns=cols, show='headings', height=18)
        for c in cols:
            self.tree.heading(c, text=c)
            self.tree.column(c, width=120)
        self.tree.pack(fill='both', expand=True, padx=(0, 8))
        self.tree.bind('<<TreeviewSelect>>', self.on_select)

        right = tk.Frame(body, bg='#ffffff', bd=1)
        right.pack(side='right', fill='both', padx=(8, 0))
        tk.Label(right, text='Details', bg='white', fg='#0f172a', font=(None, 11, 'bold')).pack(anchor='nw', padx=8, pady=8)
        self.details = tk.Text(right, width=40, state='disabled')
        self.details.pack(fill='both', expand=True, padx=8, pady=(0, 8))

        btns = tk.Frame(self, bg='#f8fafc')
        btns.pack(fill='x', padx=12, pady=(0, 12))
        refresh = tk.Button(btns, text='Refresh', command=self._load_entries)
        refresh.pack(side='left')
        close = tk.Button(btns, text='Close', command=self.destroy)
        close.pack(side='right')

    def _load_entries(self):
        for i in self.tree.get_children():
            self.tree.delete(i)
        self.entries = []
        if os.path.exists(DATA_FILE):
            try:
                with open(DATA_FILE, 'r', encoding='utf-8') as f:
                    self.entries = json.load(f)
            except Exception:
                self.entries = []
        for idx, e in enumerate(self.entries):
            fn = e.get('first_name', '')
            ln = e.get('last_name', '')
            eid = e.get('employee_id', '')
            email = e.get('email', '')
            phone = e.get('phone', '')
            self.tree.insert('', 'end', iid=str(idx), values=(fn, ln, eid, email, phone))

    def on_select(self, event):
        sel = self.tree.selection()
        if not sel:
            return
        idx = int(sel[0])
        entry = self.entries[idx]
        lines = []
        for k, v in entry.items():
            lines.append(f"{k.replace('_', ' ').title()}: {v}")
        self.details.configure(state='normal')
        self.details.delete('1.0', 'end')
        self.details.insert('1.0', '\n'.join(lines))
        self.details.configure(state='disabled')


if __name__ == '__main__':
    app = ERPFormApp(role='Employee')
    app.mainloop()

