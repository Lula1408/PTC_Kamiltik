PGDMP         $                x         
   dbcoffecup    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393 
   dbcoffecup    DATABASE     �   CREATE DATABASE dbcoffecup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbcoffecup;
                postgres    false            �            1259    16624    bitacora    TABLE     �   CREATE TABLE public.bitacora (
    id_bitacora integer NOT NULL,
    fecha_accion timestamp with time zone DEFAULT now(),
    accion text,
    id_usuario integer NOT NULL
);
    DROP TABLE public.bitacora;
       public         heap    postgres    false            �            1259    16622    bitacora_id_bitacora_seq    SEQUENCE     �   CREATE SEQUENCE public.bitacora_id_bitacora_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bitacora_id_bitacora_seq;
       public          postgres    false    235            �           0    0    bitacora_id_bitacora_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bitacora_id_bitacora_seq OWNED BY public.bitacora.id_bitacora;
          public          postgres    false    234            �            1259    16449    clientes    TABLE       CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(25) NOT NULL,
    correo text NOT NULL,
    fecha_nacimiento date,
    producto_favorito integer,
    sucursal_favorita integer
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16447    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    211            �           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    210            �            1259    16605    detalle_factura    TABLE       CREATE TABLE public.detalle_factura (
    id_detalle_factura integer NOT NULL,
    precio_unitario numeric(8,2),
    cantidad integer,
    id_factura integer NOT NULL,
    id_producto integer NOT NULL,
    CONSTRAINT detalle_factura_cantidad_check CHECK ((cantidad > 0))
);
 #   DROP TABLE public.detalle_factura;
       public         heap    postgres    false            �            1259    16603 &   detalle_factura_id_detalle_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_factura_id_detalle_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.detalle_factura_id_detalle_factura_seq;
       public          postgres    false    233            �           0    0 &   detalle_factura_id_detalle_factura_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.detalle_factura_id_detalle_factura_seq OWNED BY public.detalle_factura.id_detalle_factura;
          public          postgres    false    232            �            1259    16525    documento_compra_proveedor    TABLE     �   CREATE TABLE public.documento_compra_proveedor (
    id_documento_compra integer NOT NULL,
    imagen_factura text,
    fecha_realizacion timestamp with time zone DEFAULT now()
);
 .   DROP TABLE public.documento_compra_proveedor;
       public         heap    postgres    false            �            1259    16523 2   documento_compra_proveedor_id_documento_compra_seq    SEQUENCE     �   CREATE SEQUENCE public.documento_compra_proveedor_id_documento_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.documento_compra_proveedor_id_documento_compra_seq;
       public          postgres    false    225            �           0    0 2   documento_compra_proveedor_id_documento_compra_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.documento_compra_proveedor_id_documento_compra_seq OWNED BY public.documento_compra_proveedor.id_documento_compra;
          public          postgres    false    224            �            1259    16468    entradas    TABLE       CREATE TABLE public.entradas (
    id_entrada integer NOT NULL,
    titulo character varying(75) NOT NULL,
    descripcion text NOT NULL,
    fecha_registro date DEFAULT now(),
    tipo_entrada integer NOT NULL,
    id_estado boolean,
    autor character varying(65),
    imagen text
);
    DROP TABLE public.entradas;
       public         heap    postgres    false            �            1259    16466    entradas_id_entrada_seq    SEQUENCE     �   CREATE SEQUENCE public.entradas_id_entrada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.entradas_id_entrada_seq;
       public          postgres    false    215            �           0    0    entradas_id_entrada_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.entradas_id_entrada_seq OWNED BY public.entradas.id_entrada;
          public          postgres    false    214            �            1259    16517    estado_distribucion    TABLE     �   CREATE TABLE public.estado_distribucion (
    id_estado_distribucion integer NOT NULL,
    estado_distribucion character varying(45)
);
 '   DROP TABLE public.estado_distribucion;
       public         heap    postgres    false            �            1259    16515 .   estado_distribucion_id_estado_distribucion_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_distribucion_id_estado_distribucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.estado_distribucion_id_estado_distribucion_seq;
       public          postgres    false    223            �           0    0 .   estado_distribucion_id_estado_distribucion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.estado_distribucion_id_estado_distribucion_seq OWNED BY public.estado_distribucion.id_estado_distribucion;
          public          postgres    false    222            �            1259    16578    estado_factura    TABLE     y   CREATE TABLE public.estado_factura (
    id_estado_factura integer NOT NULL,
    estado_factura character varying(45)
);
 "   DROP TABLE public.estado_factura;
       public         heap    postgres    false            �            1259    16576 $   estado_factura_id_estado_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_factura_id_estado_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.estado_factura_id_estado_factura_seq;
       public          postgres    false    229            �           0    0 $   estado_factura_id_estado_factura_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.estado_factura_id_estado_factura_seq OWNED BY public.estado_factura.id_estado_factura;
          public          postgres    false    228            �            1259    16404    estado_general    TABLE     y   CREATE TABLE public.estado_general (
    id_estado_general integer NOT NULL,
    estado_general character varying(30)
);
 "   DROP TABLE public.estado_general;
       public         heap    postgres    false            �            1259    16402 $   estado_general_id_estado_general_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_general_id_estado_general_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.estado_general_id_estado_general_seq;
       public          postgres    false    205            �           0    0 $   estado_general_id_estado_general_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.estado_general_id_estado_general_seq OWNED BY public.estado_general.id_estado_general;
          public          postgres    false    204            �            1259    16498    estado_producto    TABLE     |   CREATE TABLE public.estado_producto (
    id_estado_producto integer NOT NULL,
    estado_producto character varying(20)
);
 #   DROP TABLE public.estado_producto;
       public         heap    postgres    false            �            1259    16496 &   estado_producto_id_estado_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_producto_id_estado_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.estado_producto_id_estado_producto_seq;
       public          postgres    false    219            �           0    0 &   estado_producto_id_estado_producto_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.estado_producto_id_estado_producto_seq OWNED BY public.estado_producto.id_estado_producto;
          public          postgres    false    218            �            1259    16586    factura    TABLE     C  CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    fecha_realizacion timestamp with time zone DEFAULT now(),
    entregado_por_cliente numeric(8,2),
    cambio numeric(8,2),
    total numeric(8,2),
    id_estado_factura integer NOT NULL,
    id_sucursal integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    16584    factura_id_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.factura_id_factura_seq;
       public          postgres    false    231            �           0    0    factura_id_factura_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;
          public          postgres    false    230            �            1259    16537 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(50),
    descripcion text,
    precio_unitario numeric(8,2),
    imagen text,
    fecha_registro timestamp without time zone,
    id_sucursal integer NOT NULL,
    id_estado_producto integer NOT NULL,
    id_estado_distribucion integer NOT NULL,
    id_tipo_producto integer NOT NULL,
    id_proveedor integer NOT NULL,
    id_documento_compra integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16535    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    227            �           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    226            �            1259    16506    proveedores    TABLE       CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre character varying(50) NOT NULL,
    empresa character varying(40),
    direccion text,
    telefono_empresa character varying(10),
    celular_contacto character varying(10),
    correo text NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    16504    proveedores_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.proveedores_id_proveedor_seq;
       public          postgres    false    221            �           0    0    proveedores_id_proveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;
          public          postgres    false    220            �            1259    16433 
   sucursales    TABLE     )  CREATE TABLE public.sucursales (
    id_sucursal integer NOT NULL,
    nombre character varying(35) NOT NULL,
    direccion text NOT NULL,
    imagen text,
    fecha_inaguracion date,
    telefono character varying(10),
    celular character varying(10),
    id_estado_general integer NOT NULL
);
    DROP TABLE public.sucursales;
       public         heap    postgres    false            �            1259    16431    sucursales_id_sucursal_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursales_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.sucursales_id_sucursal_seq;
       public          postgres    false    209            �           0    0    sucursales_id_sucursal_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.sucursales_id_sucursal_seq OWNED BY public.sucursales.id_sucursal;
          public          postgres    false    208            �            1259    16460    tipo_entrada    TABLE     s   CREATE TABLE public.tipo_entrada (
    id_tipo_entrada integer NOT NULL,
    tipo_entrada character varying(30)
);
     DROP TABLE public.tipo_entrada;
       public         heap    postgres    false            �            1259    16458     tipo_entrada_id_tipo_entrada_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_entrada_id_tipo_entrada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_entrada_id_tipo_entrada_seq;
       public          postgres    false    213            �           0    0     tipo_entrada_id_tipo_entrada_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tipo_entrada_id_tipo_entrada_seq OWNED BY public.tipo_entrada.id_tipo_entrada;
          public          postgres    false    212            �            1259    16490    tipo_producto    TABLE     v   CREATE TABLE public.tipo_producto (
    id_tipo_producto integer NOT NULL,
    tipo_producto character varying(45)
);
 !   DROP TABLE public.tipo_producto;
       public         heap    postgres    false            �            1259    16488 "   tipo_producto_id_tipo_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_producto_id_tipo_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_producto_id_tipo_producto_seq;
       public          postgres    false    217            �           0    0 "   tipo_producto_id_tipo_producto_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_producto_id_tipo_producto_seq OWNED BY public.tipo_producto.id_tipo_producto;
          public          postgres    false    216            �            1259    16396    tipo_usuario    TABLE     s   CREATE TABLE public.tipo_usuario (
    id_tipo_usuario integer NOT NULL,
    tipo_usuario character varying(45)
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false            �            1259    16394     tipo_usuario_id_tipo_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_usuario_id_tipo_usuario_seq;
       public          postgres    false    203            �           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tipo_usuario_id_tipo_usuario_seq OWNED BY public.tipo_usuario.id_tipo_usuario;
          public          postgres    false    202            �            1259    16412    usuarios    TABLE     b  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(25) NOT NULL,
    correo text NOT NULL,
    clave character varying(65),
    fecha_nacimiento date,
    imagen text,
    id_tipo_usuario integer NOT NULL,
    id_estado boolean,
    telefono character varying(15)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16410    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    207            �           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    206            �
           2604    16627    bitacora id_bitacora    DEFAULT     |   ALTER TABLE ONLY public.bitacora ALTER COLUMN id_bitacora SET DEFAULT nextval('public.bitacora_id_bitacora_seq'::regclass);
 C   ALTER TABLE public.bitacora ALTER COLUMN id_bitacora DROP DEFAULT;
       public          postgres    false    235    234    235            �
           2604    16452    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16608 "   detalle_factura id_detalle_factura    DEFAULT     �   ALTER TABLE ONLY public.detalle_factura ALTER COLUMN id_detalle_factura SET DEFAULT nextval('public.detalle_factura_id_detalle_factura_seq'::regclass);
 Q   ALTER TABLE public.detalle_factura ALTER COLUMN id_detalle_factura DROP DEFAULT;
       public          postgres    false    232    233    233            �
           2604    16528 .   documento_compra_proveedor id_documento_compra    DEFAULT     �   ALTER TABLE ONLY public.documento_compra_proveedor ALTER COLUMN id_documento_compra SET DEFAULT nextval('public.documento_compra_proveedor_id_documento_compra_seq'::regclass);
 ]   ALTER TABLE public.documento_compra_proveedor ALTER COLUMN id_documento_compra DROP DEFAULT;
       public          postgres    false    225    224    225            �
           2604    16471    entradas id_entrada    DEFAULT     z   ALTER TABLE ONLY public.entradas ALTER COLUMN id_entrada SET DEFAULT nextval('public.entradas_id_entrada_seq'::regclass);
 B   ALTER TABLE public.entradas ALTER COLUMN id_entrada DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    16520 *   estado_distribucion id_estado_distribucion    DEFAULT     �   ALTER TABLE ONLY public.estado_distribucion ALTER COLUMN id_estado_distribucion SET DEFAULT nextval('public.estado_distribucion_id_estado_distribucion_seq'::regclass);
 Y   ALTER TABLE public.estado_distribucion ALTER COLUMN id_estado_distribucion DROP DEFAULT;
       public          postgres    false    222    223    223            �
           2604    16581     estado_factura id_estado_factura    DEFAULT     �   ALTER TABLE ONLY public.estado_factura ALTER COLUMN id_estado_factura SET DEFAULT nextval('public.estado_factura_id_estado_factura_seq'::regclass);
 O   ALTER TABLE public.estado_factura ALTER COLUMN id_estado_factura DROP DEFAULT;
       public          postgres    false    229    228    229            �
           2604    16407     estado_general id_estado_general    DEFAULT     �   ALTER TABLE ONLY public.estado_general ALTER COLUMN id_estado_general SET DEFAULT nextval('public.estado_general_id_estado_general_seq'::regclass);
 O   ALTER TABLE public.estado_general ALTER COLUMN id_estado_general DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16501 "   estado_producto id_estado_producto    DEFAULT     �   ALTER TABLE ONLY public.estado_producto ALTER COLUMN id_estado_producto SET DEFAULT nextval('public.estado_producto_id_estado_producto_seq'::regclass);
 Q   ALTER TABLE public.estado_producto ALTER COLUMN id_estado_producto DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    16589    factura id_factura    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN id_factura DROP DEFAULT;
       public          postgres    false    231    230    231            �
           2604    16540    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    16509    proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);
 G   ALTER TABLE public.proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    221    220    221            �
           2604    16436    sucursales id_sucursal    DEFAULT     �   ALTER TABLE ONLY public.sucursales ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursales_id_sucursal_seq'::regclass);
 E   ALTER TABLE public.sucursales ALTER COLUMN id_sucursal DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16463    tipo_entrada id_tipo_entrada    DEFAULT     �   ALTER TABLE ONLY public.tipo_entrada ALTER COLUMN id_tipo_entrada SET DEFAULT nextval('public.tipo_entrada_id_tipo_entrada_seq'::regclass);
 K   ALTER TABLE public.tipo_entrada ALTER COLUMN id_tipo_entrada DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16493    tipo_producto id_tipo_producto    DEFAULT     �   ALTER TABLE ONLY public.tipo_producto ALTER COLUMN id_tipo_producto SET DEFAULT nextval('public.tipo_producto_id_tipo_producto_seq'::regclass);
 M   ALTER TABLE public.tipo_producto ALTER COLUMN id_tipo_producto DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    16399    tipo_usuario id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuario_id_tipo_usuario_seq'::regclass);
 K   ALTER TABLE public.tipo_usuario ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16415    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    207    206    207            �          0    16624    bitacora 
   TABLE DATA           Q   COPY public.bitacora (id_bitacora, fecha_accion, accion, id_usuario) FROM stdin;
    public          postgres    false    235   �       �          0    16449    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, nombre, apellido, correo, fecha_nacimiento, producto_favorito, sucursal_favorita) FROM stdin;
    public          postgres    false    211   :�       �          0    16605    detalle_factura 
   TABLE DATA           q   COPY public.detalle_factura (id_detalle_factura, precio_unitario, cantidad, id_factura, id_producto) FROM stdin;
    public          postgres    false    233   W�       �          0    16525    documento_compra_proveedor 
   TABLE DATA           l   COPY public.documento_compra_proveedor (id_documento_compra, imagen_factura, fecha_realizacion) FROM stdin;
    public          postgres    false    225   t�       �          0    16468    entradas 
   TABLE DATA           {   COPY public.entradas (id_entrada, titulo, descripcion, fecha_registro, tipo_entrada, id_estado, autor, imagen) FROM stdin;
    public          postgres    false    215   ��       �          0    16517    estado_distribucion 
   TABLE DATA           Z   COPY public.estado_distribucion (id_estado_distribucion, estado_distribucion) FROM stdin;
    public          postgres    false    223   ?�       �          0    16578    estado_factura 
   TABLE DATA           K   COPY public.estado_factura (id_estado_factura, estado_factura) FROM stdin;
    public          postgres    false    229   \�       �          0    16404    estado_general 
   TABLE DATA           K   COPY public.estado_general (id_estado_general, estado_general) FROM stdin;
    public          postgres    false    205   y�       �          0    16498    estado_producto 
   TABLE DATA           N   COPY public.estado_producto (id_estado_producto, estado_producto) FROM stdin;
    public          postgres    false    219   ��       �          0    16586    factura 
   TABLE DATA           �   COPY public.factura (id_factura, fecha_realizacion, entregado_por_cliente, cambio, total, id_estado_factura, id_sucursal, id_usuario) FROM stdin;
    public          postgres    false    231   ²       �          0    16537 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, nombre_producto, descripcion, precio_unitario, imagen, fecha_registro, id_sucursal, id_estado_producto, id_estado_distribucion, id_tipo_producto, id_proveedor, id_documento_compra) FROM stdin;
    public          postgres    false    227   ߲       �          0    16506    proveedores 
   TABLE DATA           {   COPY public.proveedores (id_proveedor, nombre, empresa, direccion, telefono_empresa, celular_contacto, correo) FROM stdin;
    public          postgres    false    221   ��       �          0    16433 
   sucursales 
   TABLE DATA           �   COPY public.sucursales (id_sucursal, nombre, direccion, imagen, fecha_inaguracion, telefono, celular, id_estado_general) FROM stdin;
    public          postgres    false    209   �       �          0    16460    tipo_entrada 
   TABLE DATA           E   COPY public.tipo_entrada (id_tipo_entrada, tipo_entrada) FROM stdin;
    public          postgres    false    213   Ƶ       �          0    16490    tipo_producto 
   TABLE DATA           H   COPY public.tipo_producto (id_tipo_producto, tipo_producto) FROM stdin;
    public          postgres    false    217   ��       �          0    16396    tipo_usuario 
   TABLE DATA           E   COPY public.tipo_usuario (id_tipo_usuario, tipo_usuario) FROM stdin;
    public          postgres    false    203   �       �          0    16412    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre, apellido, correo, clave, fecha_nacimiento, imagen, id_tipo_usuario, id_estado, telefono) FROM stdin;
    public          postgres    false    207   Z�       �           0    0    bitacora_id_bitacora_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bitacora_id_bitacora_seq', 1, false);
          public          postgres    false    234            �           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);
          public          postgres    false    210            �           0    0 &   detalle_factura_id_detalle_factura_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.detalle_factura_id_detalle_factura_seq', 1, false);
          public          postgres    false    232            �           0    0 2   documento_compra_proveedor_id_documento_compra_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.documento_compra_proveedor_id_documento_compra_seq', 1, false);
          public          postgres    false    224            �           0    0    entradas_id_entrada_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.entradas_id_entrada_seq', 42, true);
          public          postgres    false    214            �           0    0 .   estado_distribucion_id_estado_distribucion_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.estado_distribucion_id_estado_distribucion_seq', 1, false);
          public          postgres    false    222            �           0    0 $   estado_factura_id_estado_factura_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.estado_factura_id_estado_factura_seq', 1, false);
          public          postgres    false    228            �           0    0 $   estado_general_id_estado_general_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.estado_general_id_estado_general_seq', 2, true);
          public          postgres    false    204            �           0    0 &   estado_producto_id_estado_producto_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.estado_producto_id_estado_producto_seq', 1, false);
          public          postgres    false    218            �           0    0    factura_id_factura_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.factura_id_factura_seq', 1, false);
          public          postgres    false    230            �           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 1, false);
          public          postgres    false    226            �           0    0    proveedores_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 1, false);
          public          postgres    false    220            �           0    0    sucursales_id_sucursal_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sucursales_id_sucursal_seq', 36, true);
          public          postgres    false    208            �           0    0     tipo_entrada_id_tipo_entrada_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_entrada_id_tipo_entrada_seq', 2, true);
          public          postgres    false    212            �           0    0 "   tipo_producto_id_tipo_producto_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipo_producto_id_tipo_producto_seq', 1, false);
          public          postgres    false    216            �           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_usuario_seq', 3, true);
          public          postgres    false    202            �           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 11, true);
          public          postgres    false    206                       2606    16633    bitacora bitacora_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_pkey PRIMARY KEY (id_bitacora);
 @   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT bitacora_pkey;
       public            postgres    false    235                       2606    16457    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    211                       2606    16611 $   detalle_factura detalle_factura_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle_factura);
 N   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_pkey;
       public            postgres    false    233                       2606    16534 :   documento_compra_proveedor documento_compra_proveedor_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.documento_compra_proveedor
    ADD CONSTRAINT documento_compra_proveedor_pkey PRIMARY KEY (id_documento_compra);
 d   ALTER TABLE ONLY public.documento_compra_proveedor DROP CONSTRAINT documento_compra_proveedor_pkey;
       public            postgres    false    225            
           2606    16477    entradas entradas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.entradas
    ADD CONSTRAINT entradas_pkey PRIMARY KEY (id_entrada);
 @   ALTER TABLE ONLY public.entradas DROP CONSTRAINT entradas_pkey;
       public            postgres    false    215                       2606    16522 ,   estado_distribucion estado_distribucion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.estado_distribucion
    ADD CONSTRAINT estado_distribucion_pkey PRIMARY KEY (id_estado_distribucion);
 V   ALTER TABLE ONLY public.estado_distribucion DROP CONSTRAINT estado_distribucion_pkey;
       public            postgres    false    223                       2606    16583 "   estado_factura estado_factura_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.estado_factura
    ADD CONSTRAINT estado_factura_pkey PRIMARY KEY (id_estado_factura);
 L   ALTER TABLE ONLY public.estado_factura DROP CONSTRAINT estado_factura_pkey;
       public            postgres    false    229                        2606    16409 "   estado_general estado_general_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.estado_general
    ADD CONSTRAINT estado_general_pkey PRIMARY KEY (id_estado_general);
 L   ALTER TABLE ONLY public.estado_general DROP CONSTRAINT estado_general_pkey;
       public            postgres    false    205                       2606    16503 $   estado_producto estado_producto_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.estado_producto
    ADD CONSTRAINT estado_producto_pkey PRIMARY KEY (id_estado_producto);
 N   ALTER TABLE ONLY public.estado_producto DROP CONSTRAINT estado_producto_pkey;
       public            postgres    false    219                       2606    16592    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    231                       2606    16545    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    227                       2606    16514    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    221                       2606    16441    sucursales sucursales_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id_sucursal);
 D   ALTER TABLE ONLY public.sucursales DROP CONSTRAINT sucursales_pkey;
       public            postgres    false    209                       2606    16465    tipo_entrada tipo_entrada_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_entrada
    ADD CONSTRAINT tipo_entrada_pkey PRIMARY KEY (id_tipo_entrada);
 H   ALTER TABLE ONLY public.tipo_entrada DROP CONSTRAINT tipo_entrada_pkey;
       public            postgres    false    213                       2606    16495     tipo_producto tipo_producto_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (id_tipo_producto);
 J   ALTER TABLE ONLY public.tipo_producto DROP CONSTRAINT tipo_producto_pkey;
       public            postgres    false    217            �
           2606    16401    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_usuario);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    203                       2606    16420    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    207            ,           2606    16634 !   bitacora bitacora_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 K   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT bitacora_id_usuario_fkey;
       public          postgres    false    2818    207    235            *           2606    16612 /   detalle_factura detalle_factura_id_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura);
 Y   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_factura_fkey;
       public          postgres    false    233    231    2842            +           2606    16617 0   detalle_factura detalle_factura_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 Z   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_producto_fkey;
       public          postgres    false    227    233    2838            !           2606    16478 #   entradas entradas_tipo_entrada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entradas
    ADD CONSTRAINT entradas_tipo_entrada_fkey FOREIGN KEY (tipo_entrada) REFERENCES public.tipo_entrada(id_tipo_entrada);
 M   ALTER TABLE ONLY public.entradas DROP CONSTRAINT entradas_tipo_entrada_fkey;
       public          postgres    false    2824    213    215            (           2606    16593 &   factura factura_id_estado_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_estado_factura_fkey FOREIGN KEY (id_estado_factura) REFERENCES public.estado_factura(id_estado_factura);
 P   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_estado_factura_fkey;
       public          postgres    false    231    229    2840            )           2606    16598     factura factura_id_sucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);
 J   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_sucursal_fkey;
       public          postgres    false    209    231    2820            '           2606    16571 ,   productos productos_id_documento_compra_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_documento_compra_fkey FOREIGN KEY (id_documento_compra) REFERENCES public.documento_compra_proveedor(id_documento_compra);
 V   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_documento_compra_fkey;
       public          postgres    false    227    225    2836            $           2606    16556 /   productos productos_id_estado_distribucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_estado_distribucion_fkey FOREIGN KEY (id_estado_distribucion) REFERENCES public.estado_distribucion(id_estado_distribucion);
 Y   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_estado_distribucion_fkey;
       public          postgres    false    223    2834    227            #           2606    16551 +   productos productos_id_estado_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_estado_producto_fkey FOREIGN KEY (id_estado_producto) REFERENCES public.estado_producto(id_estado_producto);
 U   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_estado_producto_fkey;
       public          postgres    false    219    2830    227            &           2606    16566 %   productos productos_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_proveedor_fkey;
       public          postgres    false    227    221    2832            "           2606    16546 $   productos productos_id_sucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);
 N   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_sucursal_fkey;
       public          postgres    false    227    2820    209            %           2606    16561 )   productos productos_id_tipo_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_tipo_producto_fkey FOREIGN KEY (id_tipo_producto) REFERENCES public.tipo_producto(id_tipo_producto);
 S   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_tipo_producto_fkey;
       public          postgres    false    2828    227    217                        2606    16442 ,   sucursales sucursales_id_estado_general_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_id_estado_general_fkey FOREIGN KEY (id_estado_general) REFERENCES public.estado_general(id_estado_general);
 V   ALTER TABLE ONLY public.sucursales DROP CONSTRAINT sucursales_id_estado_general_fkey;
       public          postgres    false    2816    209    205                       2606    16426 &   usuarios usuarios_id_tipo_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipo_usuario(id_tipo_usuario);
 P   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_tipo_usuario_fkey;
       public          postgres    false    203    2814    207            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m̱
�0����� V���,�ҩn]Bz�@��E��� �����p�ڒ<g��N�Ƹ���1tm�6���:��gv��D�Gu�0z0Z��5h���6!\(x����&/%0F�%�,5\8ъ>��������-���>x_q���{��a�G>      �      x������ � �      �      x������ � �      �      x�3�tL.�,��2���K�0c���� ^��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�ŗ;o�0�g�S�����m��l�uv��h���E�l(Q%%��!S����)qۤٲ H����{��)���L}3*k��x3W��Zد��J���h۔�Aiv�g]�K㡚�<��BC`1�w�)�׮RI�/�!?*I��x�E*��ae��{�:nh�n��cm۟��ڝ���h��FO��"c>�1�tK��kS�KW�˔��m�O%L�
�����SoȪ�E�1L67�F�λ��MN�0u��z�1���Mn�k�D��u�BaJ6�	NH�%�[�����><���΋�0�\�O��O]�|05�wXn�Kkr
8"�DcId�Cer'��Hq�X���$D1V�Q�J�8�$8�fb�֤b���ԽK���sS�E$U��a�*���{ �3�q�䩳F[���\����0�3���H���R���xe�T����Yx���+���cd�� �H�%�ܒXJ&�Z��r��.�4b�6a���{9i��̊�5�����75Kp9љ�����Ū�Ԃ #5!惘|�إ�D�$S�S-9����;gY �i/�#1��h������ i�`��ѯ��XI�m�UckSug#Ő�Z���V:��jn�tI�������m*�H���l�R<��k*D����~�c�      �   '   x�3���/�L�L,�2�t.-��/�LILI-����� ��	K      �      x������ � �      �   0   x�3�tL����,.)JL�/�2�tN�J-��2�tO-J�+I����� �      �   �   x�eͻr�@@���),h�]PX�p	:��#D�fY�Lt/���<}��"�9͇d\�NN[7Z�y��oID�i	�s�1�OM��+;�~=�u;�oU6��DWv����Ed-V���x����E~`3[��x�[��h�>�������Ճ��*�O�i�WI�n?I_��(��U��.ǋ�8�n��*��K<��Mϲ�?q�Ge     