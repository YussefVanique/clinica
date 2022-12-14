PGDMP     $                    z            postgres    14.3    14.3     D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    13754    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                postgres    false            H           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3399                        2615    16454    clinica    SCHEMA        CREATE SCHEMA clinica;
    DROP SCHEMA clinica;
                postgres    false            ?            1259    24701    disponibilidade    TABLE     ?   CREATE TABLE clinica.disponibilidade (
    coddisponibilidade integer NOT NULL,
    status character varying[],
    codfunc integer NOT NULL
);
 $   DROP TABLE clinica.disponibilidade;
       clinica         heap    postgres    false    6            ?            1259    24725    exame    TABLE     ?   CREATE TABLE clinica.exame (
    codexame integer NOT NULL,
    descricao character varying[],
    codfunc integer NOT NULL,
    codpaciente integer NOT NULL
);
    DROP TABLE clinica.exame;
       clinica         heap    postgres    false    6            ?            1259    24682    funcionario    TABLE     C   CREATE TABLE clinica.funcionario (
    codfunc integer NOT NULL
);
     DROP TABLE clinica.funcionario;
       clinica         heap    postgres    false    6            ?            1259    24742    laboratorio    TABLE     ?   CREATE TABLE clinica.laboratorio (
    codlab integer NOT NULL,
    status character varying[],
    sala integer,
    codexame integer NOT NULL
);
     DROP TABLE clinica.laboratorio;
       clinica         heap    postgres    false    6            ?            1259    24720    paciente    TABLE     D   CREATE TABLE clinica.paciente (
    codpaciente integer NOT NULL
);
    DROP TABLE clinica.paciente;
       clinica         heap    postgres    false    6            ?            1259    24754    retorno    TABLE     c   CREATE TABLE clinica.retorno (
    codretorno integer NOT NULL,
    data date,
    hora integer
);
    DROP TABLE clinica.retorno;
       clinica         heap    postgres    false    6            ?            1259    24668    tipo    TABLE     n   CREATE TABLE clinica.tipo (
    codtipo integer NOT NULL,
    nome character varying[],
    numero integer
);
    DROP TABLE clinica.tipo;
       clinica         heap    postgres    false    6            =          0    24701    disponibilidade 
   TABLE DATA           O   COPY clinica.disponibilidade (coddisponibilidade, status, codfunc) FROM stdin;
    clinica          postgres    false    228   I!       ?          0    24725    exame 
   TABLE DATA           K   COPY clinica.exame (codexame, descricao, codfunc, codpaciente) FROM stdin;
    clinica          postgres    false    230   f!       <          0    24682    funcionario 
   TABLE DATA           /   COPY clinica.funcionario (codfunc) FROM stdin;
    clinica          postgres    false    227   ?!       @          0    24742    laboratorio 
   TABLE DATA           F   COPY clinica.laboratorio (codlab, status, sala, codexame) FROM stdin;
    clinica          postgres    false    231   ?!       >          0    24720    paciente 
   TABLE DATA           0   COPY clinica.paciente (codpaciente) FROM stdin;
    clinica          postgres    false    229   ?!       A          0    24754    retorno 
   TABLE DATA           :   COPY clinica.retorno (codretorno, data, hora) FROM stdin;
    clinica          postgres    false    232   ?!       ;          0    24668    tipo 
   TABLE DATA           6   COPY clinica.tipo (codtipo, nome, numero) FROM stdin;
    clinica          postgres    false    226   ?!       ?           2606    24707 $   disponibilidade disponibilidade_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY clinica.disponibilidade
    ADD CONSTRAINT disponibilidade_pkey PRIMARY KEY (coddisponibilidade);
 O   ALTER TABLE ONLY clinica.disponibilidade DROP CONSTRAINT disponibilidade_pkey;
       clinica            postgres    false    228            ?           2606    24731    exame exame_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY clinica.exame
    ADD CONSTRAINT exame_pkey PRIMARY KEY (codexame);
 ;   ALTER TABLE ONLY clinica.exame DROP CONSTRAINT exame_pkey;
       clinica            postgres    false    230            ?           2606    24686    funcionario funcionario_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY clinica.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (codfunc);
 G   ALTER TABLE ONLY clinica.funcionario DROP CONSTRAINT funcionario_pkey;
       clinica            postgres    false    227            ?           2606    24748    laboratorio laboratorio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY clinica.laboratorio
    ADD CONSTRAINT laboratorio_pkey PRIMARY KEY (codlab);
 G   ALTER TABLE ONLY clinica.laboratorio DROP CONSTRAINT laboratorio_pkey;
       clinica            postgres    false    231            ?           2606    24724    paciente paciente_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY clinica.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (codpaciente);
 A   ALTER TABLE ONLY clinica.paciente DROP CONSTRAINT paciente_pkey;
       clinica            postgres    false    229            ?           2606    24758    retorno retorno_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY clinica.retorno
    ADD CONSTRAINT retorno_pkey PRIMARY KEY (codretorno);
 ?   ALTER TABLE ONLY clinica.retorno DROP CONSTRAINT retorno_pkey;
       clinica            postgres    false    232            ?           2606    24674    tipo tipo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY clinica.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (codtipo);
 9   ALTER TABLE ONLY clinica.tipo DROP CONSTRAINT tipo_pkey;
       clinica            postgres    false    226            ?           2606    24708 ,   disponibilidade disponibilidade_codfunc_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY clinica.disponibilidade
    ADD CONSTRAINT disponibilidade_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES clinica.funcionario(codfunc) NOT VALID;
 W   ALTER TABLE ONLY clinica.disponibilidade DROP CONSTRAINT disponibilidade_codfunc_fkey;
       clinica          postgres    false    3233    227    228            ?           2606    24732    exame exame_codfunc_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY clinica.exame
    ADD CONSTRAINT exame_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES clinica.funcionario(codfunc) NOT VALID;
 C   ALTER TABLE ONLY clinica.exame DROP CONSTRAINT exame_codfunc_fkey;
       clinica          postgres    false    227    3233    230            ?           2606    24737    exame exame_codpaciente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY clinica.exame
    ADD CONSTRAINT exame_codpaciente_fkey FOREIGN KEY (codpaciente) REFERENCES clinica.paciente(codpaciente) NOT VALID;
 G   ALTER TABLE ONLY clinica.exame DROP CONSTRAINT exame_codpaciente_fkey;
       clinica          postgres    false    229    230    3237            ?           2606    24749 %   laboratorio laboratorio_codexame_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY clinica.laboratorio
    ADD CONSTRAINT laboratorio_codexame_fkey FOREIGN KEY (codexame) REFERENCES clinica.exame(codexame) NOT VALID;
 P   ALTER TABLE ONLY clinica.laboratorio DROP CONSTRAINT laboratorio_codexame_fkey;
       clinica          postgres    false    230    231    3239            =      x?????? ? ?      ?      x?????? ? ?      <      x?????? ? ?      @      x?????? ? ?      >      x?????? ? ?      A      x?????? ? ?      ;      x?????? ? ?     