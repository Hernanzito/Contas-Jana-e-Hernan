-- Ejecutar en Supabase > SQL Editor. Una única cuenta de acceso familiar.
create table if not exists public.family_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{"items":[],"bases":{}}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.family_data enable row level security;
create policy "family_select" on public.family_data for select to authenticated using (auth.uid() = user_id);
create policy "family_insert" on public.family_data for insert to authenticated with check (auth.uid() = user_id);
create policy "family_update" on public.family_data for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
-- Activar Realtime para public.family_data en Database > Publications > supabase_realtime.
