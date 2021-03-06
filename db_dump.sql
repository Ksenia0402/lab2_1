PGDMP         3                x         
   CheerSport    12.2    12.2 3    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16936 
   CheerSport    DATABASE     �   CREATE DATABASE "CheerSport" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "CheerSport";
                postgres    false            �            1259    18603    club    TABLE     �   CREATE TABLE public.club (
    clubid integer NOT NULL,
    name character varying(50) NOT NULL,
    diector character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(50) NOT NULL
);
    DROP TABLE public.club;
       public         heap    postgres    false            �            1259    18601    club_clubid_seq    SEQUENCE     �   CREATE SEQUENCE public.club_clubid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.club_clubid_seq;
       public          postgres    false    205            D           0    0    club_clubid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.club_clubid_seq OWNED BY public.club.clubid;
          public          postgres    false    204            �            1259    18595    coach    TABLE     �   CREATE TABLE public.coach (
    coachid integer NOT NULL,
    name character varying(100) NOT NULL,
    birthday date NOT NULL,
    email character varying(30) NOT NULL
);
    DROP TABLE public.coach;
       public         heap    postgres    false            �            1259    18593    coach_coachid_seq    SEQUENCE     �   CREATE SEQUENCE public.coach_coachid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.coach_coachid_seq;
       public          postgres    false    203            E           0    0    coach_coachid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.coach_coachid_seq OWNED BY public.coach.coachid;
          public          postgres    false    202            �            1259    18629    competition    TABLE     �   CREATE TABLE public.competition (
    competitionid integer NOT NULL,
    name character varying(50) NOT NULL,
    dateln date NOT NULL,
    place character varying(50) NOT NULL
);
    DROP TABLE public.competition;
       public         heap    postgres    false            �            1259    18627    competition_competitionid_seq    SEQUENCE     �   CREATE SEQUENCE public.competition_competitionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.competition_competitionid_seq;
       public          postgres    false    209            F           0    0    competition_competitionid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.competition_competitionid_seq OWNED BY public.competition.competitionid;
          public          postgres    false    208            �            1259    18655 	   sportsman    TABLE     #  CREATE TABLE public.sportsman (
    sportsmanid integer NOT NULL,
    name character varying(50) NOT NULL,
    birthday date NOT NULL,
    place character varying(50) NOT NULL,
    rank character varying(50) NOT NULL,
    teamid integer NOT NULL,
    agect character varying(50) NOT NULL
);
    DROP TABLE public.sportsman;
       public         heap    postgres    false            �            1259    18653    sportsman_sportsmanid_seq    SEQUENCE     �   CREATE SEQUENCE public.sportsman_sportsmanid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.sportsman_sportsmanid_seq;
       public          postgres    false    213            G           0    0    sportsman_sportsmanid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.sportsman_sportsmanid_seq OWNED BY public.sportsman.sportsmanid;
          public          postgres    false    212            �            1259    18611    takepart    TABLE     �   CREATE TABLE public.takepart (
    takepartid integer NOT NULL,
    clubid integer NOT NULL,
    competitionid integer NOT NULL
);
    DROP TABLE public.takepart;
       public         heap    postgres    false            �            1259    18609    takepart_takepartid_seq    SEQUENCE     �   CREATE SEQUENCE public.takepart_takepartid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.takepart_takepartid_seq;
       public          postgres    false    207            H           0    0    takepart_takepartid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.takepart_takepartid_seq OWNED BY public.takepart.takepartid;
          public          postgres    false    206            �            1259    18637    team    TABLE     �   CREATE TABLE public.team (
    teamid integer NOT NULL,
    name character varying(30) NOT NULL,
    clubid integer NOT NULL,
    coachid integer NOT NULL
);
    DROP TABLE public.team;
       public         heap    postgres    false            �            1259    18635    team_teamid_seq    SEQUENCE     �   CREATE SEQUENCE public.team_teamid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.team_teamid_seq;
       public          postgres    false    211            I           0    0    team_teamid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.team_teamid_seq OWNED BY public.team.teamid;
          public          postgres    false    210            �
           2604    18606    club clubid    DEFAULT     j   ALTER TABLE ONLY public.club ALTER COLUMN clubid SET DEFAULT nextval('public.club_clubid_seq'::regclass);
 :   ALTER TABLE public.club ALTER COLUMN clubid DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    18598    coach coachid    DEFAULT     n   ALTER TABLE ONLY public.coach ALTER COLUMN coachid SET DEFAULT nextval('public.coach_coachid_seq'::regclass);
 <   ALTER TABLE public.coach ALTER COLUMN coachid DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    18632    competition competitionid    DEFAULT     �   ALTER TABLE ONLY public.competition ALTER COLUMN competitionid SET DEFAULT nextval('public.competition_competitionid_seq'::regclass);
 H   ALTER TABLE public.competition ALTER COLUMN competitionid DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    18658    sportsman sportsmanid    DEFAULT     ~   ALTER TABLE ONLY public.sportsman ALTER COLUMN sportsmanid SET DEFAULT nextval('public.sportsman_sportsmanid_seq'::regclass);
 D   ALTER TABLE public.sportsman ALTER COLUMN sportsmanid DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    18614    takepart takepartid    DEFAULT     z   ALTER TABLE ONLY public.takepart ALTER COLUMN takepartid SET DEFAULT nextval('public.takepart_takepartid_seq'::regclass);
 B   ALTER TABLE public.takepart ALTER COLUMN takepartid DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    18640    team teamid    DEFAULT     j   ALTER TABLE ONLY public.team ALTER COLUMN teamid SET DEFAULT nextval('public.team_teamid_seq'::regclass);
 :   ALTER TABLE public.team ALTER COLUMN teamid DROP DEFAULT;
       public          postgres    false    211    210    211            5          0    18603    club 
   TABLE DATA           C   COPY public.club (clubid, name, diector, email, phone) FROM stdin;
    public          postgres    false    205   q:       3          0    18595    coach 
   TABLE DATA           ?   COPY public.coach (coachid, name, birthday, email) FROM stdin;
    public          postgres    false    203   Z;       9          0    18629    competition 
   TABLE DATA           I   COPY public.competition (competitionid, name, dateln, place) FROM stdin;
    public          postgres    false    209   �<       =          0    18655 	   sportsman 
   TABLE DATA           \   COPY public.sportsman (sportsmanid, name, birthday, place, rank, teamid, agect) FROM stdin;
    public          postgres    false    213   �=       7          0    18611    takepart 
   TABLE DATA           E   COPY public.takepart (takepartid, clubid, competitionid) FROM stdin;
    public          postgres    false    207   �>       ;          0    18637    team 
   TABLE DATA           =   COPY public.team (teamid, name, clubid, coachid) FROM stdin;
    public          postgres    false    211   "?       J           0    0    club_clubid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.club_clubid_seq', 4, true);
          public          postgres    false    204            K           0    0    coach_coachid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.coach_coachid_seq', 6, true);
          public          postgres    false    202            L           0    0    competition_competitionid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.competition_competitionid_seq', 10, true);
          public          postgres    false    208            M           0    0    sportsman_sportsmanid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.sportsman_sportsmanid_seq', 7, true);
          public          postgres    false    212            N           0    0    takepart_takepartid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.takepart_takepartid_seq', 12, true);
          public          postgres    false    206            O           0    0    team_teamid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.team_teamid_seq', 10, true);
          public          postgres    false    210            �
           2606    18608    club club_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_pkey PRIMARY KEY (clubid);
 8   ALTER TABLE ONLY public.club DROP CONSTRAINT club_pkey;
       public            postgres    false    205            �
           2606    18600    coach coach_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.coach
    ADD CONSTRAINT coach_pkey PRIMARY KEY (coachid);
 :   ALTER TABLE ONLY public.coach DROP CONSTRAINT coach_pkey;
       public            postgres    false    203            �
           2606    18634    competition competition_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.competition
    ADD CONSTRAINT competition_pkey PRIMARY KEY (competitionid);
 F   ALTER TABLE ONLY public.competition DROP CONSTRAINT competition_pkey;
       public            postgres    false    209            �
           2606    18660    sportsman sportsman_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.sportsman
    ADD CONSTRAINT sportsman_pkey PRIMARY KEY (sportsmanid);
 B   ALTER TABLE ONLY public.sportsman DROP CONSTRAINT sportsman_pkey;
       public            postgres    false    213            �
           2606    18616    takepart takepart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.takepart
    ADD CONSTRAINT takepart_pkey PRIMARY KEY (takepartid);
 @   ALTER TABLE ONLY public.takepart DROP CONSTRAINT takepart_pkey;
       public            postgres    false    207            �
           2606    18642    team team_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (teamid);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    211            �
           2606    18661    sportsman sportsman_teamid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sportsman
    ADD CONSTRAINT sportsman_teamid_fkey FOREIGN KEY (teamid) REFERENCES public.team(teamid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.sportsman DROP CONSTRAINT sportsman_teamid_fkey;
       public          postgres    false    213    2732    211            �
           2606    18617    takepart takepart_clubid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.takepart
    ADD CONSTRAINT takepart_clubid_fkey FOREIGN KEY (clubid) REFERENCES public.club(clubid) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.takepart DROP CONSTRAINT takepart_clubid_fkey;
       public          postgres    false    2726    205    207            �
           2606    18622 $   takepart takepart_competitionid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.takepart
    ADD CONSTRAINT takepart_competitionid_fkey FOREIGN KEY (competitionid) REFERENCES public.takepart(takepartid) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.takepart DROP CONSTRAINT takepart_competitionid_fkey;
       public          postgres    false    2728    207    207            �
           2606    18643    team team_clubid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_clubid_fkey FOREIGN KEY (clubid) REFERENCES public.club(clubid) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.team DROP CONSTRAINT team_clubid_fkey;
       public          postgres    false    2726    211    205            �
           2606    18648    team team_coachid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_coachid_fkey FOREIGN KEY (coachid) REFERENCES public.coach(coachid) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.team DROP CONSTRAINT team_coachid_fkey;
       public          postgres    false    203    211    2724            5   �   x�M�M
�0���)zi�MӝqЅ�)�Zu#(�;�g���b�*z��9M%&o�o�0�ǁa�O�x��Z�^��!�i)̩���#\uo��T؎���#�+I��@��'�'|^eX�l�������\��X�s=��2�� ����x��V�~�'jv�J��]�6�Y��Z7r������_���8������IT��GۭI��7*�����      3   "  x�u��J�0��ӫ�d$�c���I�C
���ez�����'ß;(�
ec��/w䛬�L���%ߓ'�d�C�������zD��5fI���1m���؈�p*��p2]�I���)�L%�X�y>�5�f���<:L�^akA\��_�6����r��9˒[]ݫ<��-7`�I�yªl����Y�Kv���{�w�3�x�o8�"�`J�e2��1�Ʊm��v�ּ����M�~�I�1}ɮ�+4 W�V�e:Ӗ9a�r�4��p��������K�ˀ�J��A�b�y�����      9   R  x���=N�@�k�����S��X�H!A)�MBA���B@ њ��1ع���Ʊ@PZH������͌v0�xF�L���+d���p�o|�7�6q��j�	VH�9b;U��oxE�Pd}4qCƊ���%QF�d<1�k����Xᎂ#�H+��ӭ���N,�KAWRm���%E$4+1)�X�a�=��d�eJ�����W;�$�>��E�����$y�Ȝ��n���~-�-g�?�F*
{��G��휜v¨�����n�څ?�Ѳ���q����q8�*R�S�Dc˲�#6aG��������AF�ٵ�t,+Vq[u���e���      =   �   x���A�0E��)�@M��]<���(����AE^az#��,\�0��t&�_�3t"G���	���%�����S�%�w|b+"�c��ґ�ί�n>kA94.��C�~)c����چ�:� 4(���-��m�(�P���/������2��ˆ��#�p�q��ߕ9~?y�����7�`/����"�N?�����=Ƥi��<�Ra�'V�Y�[�\L��/?�      7   -   x�3�4��2�4�4�2�-�,8�9M�,�ls. i����� j�      ;   �   x��1�@D����p v��1l���Z��������lC $p��7�K7y�f��;g.�!��|h���� � %����@���q�ںqխi�F
�q��e|�4�off{/�h�����Ă�L{{9����?�     