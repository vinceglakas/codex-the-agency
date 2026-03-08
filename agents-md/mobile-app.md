# AGENTS.md — Mobile App Project

## Project Type
React Native / Expo iOS & Android app with Supabase backend.

## Stack
- **Frontend:** Expo (managed workflow), NativeWind (Tailwind for RN), Expo Router
- **Backend:** Supabase (auth + DB + realtime), Next.js API routes where needed
- **Notifications:** Expo Notifications (push), Resend (email)
- **Payments:** Stripe (when applicable)
- **Language:** TypeScript strict mode throughout

## Commands
```bash
npm install          # install deps
npx expo start       # start dev server (scan QR with Expo Go)
npx expo export      # production build check
npm test             # run tests
```

## Specialists Available
Use these skills in any thread by invoking `$skill-name`:

| Skill | When to Use |
|-------|------------|
| `$mobile-app-builder` | Any iOS/Android feature, push notifications, App Store prep |
| `$ui-designer` | Design system, dark mode, component polish |
| `$whimsy-injector` | Empty states, success animations, delight moments |
| `$backend-architect` | API routes, Supabase schema, auth, RLS |
| `$security-engineer` | Auth review, input validation, secrets audit |
| `$app-store-optimizer` | Store copy, keywords, screenshot text |
| `$growth-hacker` | Referral system, viral loop, analytics |

## Conventions
- Always use `useSafeAreaInsets()` for screen padding
- Haptics on every meaningful user action
- Dark mode only — no light mode components
- All prices/numbers: `tabularNums` font variant
- Handle empty, loading, and error states for every data-fetching component
- TypeScript: no `any`, no implicit types
- Commit after every working feature — small commits

## What NOT to Do
- Don't use `StyleSheet.create` — use NativeWind classes only
- Don't request permissions on app launch — request at the moment of need
- Don't hardcode colors — use Tailwind tokens
- Don't skip error boundaries on critical screens
