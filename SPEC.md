# Smart CV – Resume Builder App Specification

## 1. Project Overview

**Project Name:** SmartCV

**Core Functionality:** A mobile app that helps users create professional resumes and CVs with 50+ templates, 15 color variations, cover letter builder, and PDF export capabilities. Works fully offline.

## 2. Technology Stack & Choices

- **Framework:** React Native with Expo SDK 52
- **Language:** TypeScript
- **Key Libraries:**
  - `expo-router` - File-based navigation
  - `@react-native-async-storage/async-storage` - Local data persistence
  - `expo-image-picker` - Profile photo selection
  - `expo-print` & `expo-sharing` - PDF generation and sharing
  - `zustand` - Lightweight state management
  - `react-native-safe-area-context` - Safe area handling
- **State Management:** Zustand (lightweight, simple API)
- **Architecture Pattern:** Clean Architecture with feature-based folder structure

## 3. Feature List

### Core Features
1. **Template Gallery** - Browse 50+ resume templates with preview
2. **Color Themes** - 15 color variations per template
3. **Resume Editor** - Step-by-step form for:
   - Personal Information
   - Summary/Objective
   - Work Experience
   - Education
   - Skills (with proficiency levels)
   - Projects
   - Certifications
   - Languages
   - Custom Sections
4. **Live Preview** - Real-time resume preview while editing
5. **Section Management** - Reorder, rename, add/remove sections
6. **PDF Export** - Download resume as PDF
7. **Cover Letter Builder** - Create matching cover letters
8. **Profile Photo** - Optional photo support on resumes
9. **Resume Manager** - Save, edit, duplicate, delete resumes
10. **Offline Support** - Full functionality without internet

### Formatting Options
- Font size adjustment (Small, Medium, Large)
- Font style selection
- Margin settings (Narrow, Normal, Wide)
- Color theme selection

## 4. UI/UX Design Direction

- **Visual Style:** Modern Material Design 3 with clean, professional aesthetics
- **Color Scheme:** 
  - Primary: Deep Blue (#1E3A8A)
  - Secondary: Teal (#0D9488)
  - Background: Light Gray (#F8FAFC)
  - Surface: White (#FFFFFF)
  - Accent colors for templates: Blue, Green, Purple, Orange, Red, Teal, etc.
- **Layout Approach:** Bottom tab navigation with 4 main sections:
  1. Templates - Browse and select resume templates
  2. My Resumes - Manage saved resumes
  3. Cover Letters - Manage cover letters
  4. Settings - App preferences and customization
- **Resume Editor:** Multi-step wizard with progress indicator
- **Preview:** Split-screen on tablets, full-screen modal on phones
- **Typography:** Clean sans-serif fonts (System fonts)

## 5. Data Models

### Resume
- id, name, templateId, colorTheme, fontSize, fontStyle
- sections: [{ id, type, title, order, content }]
- photoUri (optional)
- createdAt, updatedAt

### Template
- id, name, category, thumbnail, layout, isPremium

### Cover Letter
- id, name, templateId, colorTheme, content, resumeId (optional)
- createdAt, updatedAt
