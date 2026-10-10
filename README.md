# RESQ360 • Mobile App for Disaster Alert, Emergency Communication & Rescue Coordination

A modern, responsive emergency management web and mobile companion application developed as a College Mini-Project.

---

## 📌 Project Overview
During natural catastrophes (floods, cyclones, earthquakes, and landslides), civil communications fail or become bottlenecked. **RESQ360** provides an end-to-end synchronized disaster management platform connecting:
1. **Public Citizens:** Real-time early warnings, one-touch SOS reporting with GPS telemetry, casualty tracking, and tactical live chat.
2. **Rescue Teams (NDRF / SDRF):** Dispatch task assignments, on-scene status logs, unit equipment readiness, and field communications.
3. **Disaster Management Authorities (Admin):** Live incident triage queue, interactive Leaflet OpenStreetMap GIS layer, alert broadcasting, fleet commissioning, and audit logs.

---

## 🚀 Quick Launch (Windows PowerShell)

Open PowerShell in this project folder and run:

```powershell
# 1. Install dependencies (if not already installed)
npm install

# 2. Launch the Vite development server
npm run dev
```

Once running, open your web browser at:
👉 **[http://localhost:5173/](http://localhost:5173/)**

To create an optimized production build:
```powershell
npm run build
npm run preview
```

---

## 🌟 Key Features & Pages

| # | Module | Description |
|---|---|---|
| 1 | **Home Page** | Project statistics counter (Active Alerts, Pending SOS, Rescued Lives, Rescue Units), emergency ticker, how-it-works workflow, and siren test. |
| 2 | **Disaster Alerts** | Live categorized alerts for Flood, Cyclone, Earthquake, Landslide, and Urban Fire with impact radii, safety instructions, and siren audio. |
| 3 | **Report Emergency (SOS)** | Form with caller info, triage priority, automatic GPS location detection (`navigator.geolocation` + Indian sector fallbacks), casualty counter, and unique Report ID generation (e.g. `EMG-2026-1042`). |
| 4 | **Emergency Dashboard** | Real-time incident queue with search, priority filters, card/table toggle, and clickable incident dossier modal with lifecycle controls (`Pending` → `Assigned` → `In Progress` → `Resolved`). |
| 5 | **Rescue Coordination** | First responder command console: assign pending emergency requests to specialized NDRF/SDRF teams with custom commander directives and live radio logging. |
| 6 | **Interactive GIS Map** | Full Leaflet & OpenStreetMap GIS layer with custom color-coded incident markers, hazard impact radii circles, and interactive inspector panel. |
| 7 | **Emergency Communication** | Multi-channel chat: **Public SOS Net**, **Tactical Rescue Radio**, and **HQ Broadcasts** with rapid response macros and simulated audio blips. |
| 8 | **Safety Guidelines** | Step-by-step preparedness guides (Before, During, After), Do's and Don'ts, interactive 72-Hour Family Go-Bag Checklist with local storage progress tracking, and 24/7 helpline directory. |
| 9 | **Admin Dashboard** | Executive metrics, broadcast new alerts, commission new rescue squads, manage incidents, and export full incident audit log as JSON. |
| 10 | **Role-Based Authentication** | Instant 1-click evaluator logins for **Public User (Citizen)**, **Rescue Team (NDRF)**, and **Disaster Admin (Command HQ)**. |

---

## 🛠️ Technology Stack
- **Frontend:** React 19, Vite 8, Tailwind CSS v4, Lucide React Icons
- **GIS / Mapping:** Leaflet 1.9 & OpenStreetMap (No paid API keys required)
- **Audio Telemetry:** Browser Web Audio API (Synthesized EAS siren warning & radio chirp)
- **Data Persistence:** LocalStorage state engine with built-in evaluator reset button
- **Responsive Viewport:** Desktop Control Room View + Floating **Mobile Device Simulator Frame** (`📱 Mobile View`)

---

## 🛡️ Safety & Academic Compliance Notice
> **Disclaimer:** This software is an academic demonstration project. All emergency alerts, geographic coordinates, distress reports, and radio dispatches are computer-generated simulations. In an actual real-world emergency, immediately dial **112** (National Unified Helpline) or **1078** (NDRF Control Room).
