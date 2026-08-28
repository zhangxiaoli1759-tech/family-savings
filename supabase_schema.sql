-- 家庭存钱计划 · 数据表
-- 在 Supabase 控制台 → SQL Editor 里粘贴执行一次即可

create table if not exists public.savings_records (
  id          bigint generated always as identity primary key,
  created_at  timestamptz default now(),
  date        text not null,        -- 月份，如 2026-08
  amount      numeric not null,     -- 金额
  method      text not null,        -- 存入 / 支出
  source      text not null,        -- 爸爸 / 妈妈 / 儿子 / 家庭
  note        text default ''       -- 备注
);

-- 开启行级安全（RLS）
alter table public.savings_records enable row level security;

-- 允许匿名（前端 anon key）读写整张表
-- 适合家庭内部私密使用；若需防外人，可后续加口令校验
create policy "allow anon all"
  on public.savings_records
  for all
  using (true)
  with check (true);
