# AGENTS.md — SaaS Startup

## Project Type
Next.js SaaS with auth, dashboard, payments, and API.

## Stack
- **Framework:** Next.js 14 (App Router)
- **Database:** Supabase (PostgreSQL + auth + RLS)
- **Payments:** Stripe (subscriptions + webhooks)
- **Email:** Resend
- **Styling:** Tailwind CSS
- **Language:** TypeScript strict mode

## Commands
```bash
npm install          # install deps
npm run dev          # start at localhost:3000
npm test             # run tests
npm run build        # production build check
```

## Specialists Available

| Skill | When to Use |
|-------|------------|
| `$backend-architect` | API routes, DB schema, auth, Stripe integration |
| `$frontend-developer` | Dashboard components, landing page, forms |
| `$security-engineer` | Auth hardening, RLS policies, input validation |
| `$devops-automator` | CI/CD, Vercel deploy, GitHub Actions |
| `$growth-hacker` | Referral system, onboarding optimization, analytics |
| `$content-creator` | Landing page copy, email sequences, blog posts |
| `$ui-designer` | Design system, Tailwind tokens, component polish |

## Conventions
- Supabase RLS on every table — no exceptions
- All API routes validate input with Zod before DB access
- Stripe webhooks verify signatures before processing
- Environment variables documented in `.env.example`
- Error handling: every API route returns consistent `{ error, data }` shape
- TypeScript: strict mode, no `any`

## What NOT to Do
- Don't skip RLS and rely on client-side auth checks
- Don't store secrets in code — `.env.local` only, never committed
- Don't trust client-sent user IDs — always use `auth.uid()` from Supabase
- Don't build what Stripe, Supabase, or Resend already built
