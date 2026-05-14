-- Supabase SQL Editor 里执行
create table if not exists public.zongce_submissions (
  student_id text primary key,
  name text not null,
  course_score numeric not null,
  course_rank integer,
  fail_count text,
  deyu_add numeric default 0,
  deyu_minus numeric default 0,
  deyu_note text default '',
  labor_mode text default 'dormOnly',
  dorm_level text default '',
  practice_level text default '',
  labor_manual numeric,
  labor_minus numeric default 0,
  labor_note text default '',
  pe_score numeric,
  sports_add numeric default 0,
  sports_minus numeric default 0,
  sports_note text default '',
  evidence_links text default '',
  confirmed boolean default false,
  remark text default '',
  updated_at timestamptz default now()
);

alter table public.zongce_submissions enable row level security;

-- 轻量班级版：允许网页端读取/写入。适合低敏数据；不要放身份证号、手机号等隐私。
drop policy if exists "public read zongce" on public.zongce_submissions;
create policy "public read zongce" on public.zongce_submissions
for select using (true);

drop policy if exists "public upsert zongce" on public.zongce_submissions;
create policy "public upsert zongce" on public.zongce_submissions
for insert with check (true);

drop policy if exists "public update zongce" on public.zongce_submissions;
create policy "public update zongce" on public.zongce_submissions
for update using (true) with check (true);
