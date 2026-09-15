-- Dieses Skript im Supabase-Dashboard unter "SQL Editor" ausführen.
-- Es legt die Tabelle an, in der alle Umfragen gespeichert werden.

create table if not exists kv_store (
  key text primary key,
  value text not null,
  updated_at timestamptz default now()
);

-- Zugriff für alle erlauben (die App hat kein eigenes Login-System,
-- der Zugriff läuft ausschließlich über den geheimen Umfrage-Code).
alter table kv_store enable row level security;

create policy "Öffentlicher Lesezugriff"
  on kv_store for select
  using (true);

create policy "Öffentlicher Schreibzugriff"
  on kv_store for insert
  with check (true);

create policy "Öffentlicher Updatezugriff"
  on kv_store for update
  using (true);

create policy "Öffentlicher Löschzugriff"
  on kv_store for delete
  using (true);
