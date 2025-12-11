const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;

pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __builtin_va_list = [*c]u8;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = __darwin_ct_rune_t;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.c) void = null,
    __arg: ?*anyopaque = null,
    __next: [*c]struct___darwin_pthread_handler_rec = null,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = 0,
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = 0,
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = 0,
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = 0,
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = 0,
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = 0,
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = 0,
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = 0,
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = 0,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = null,
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct__Z3_symbol = opaque {};
pub const Z3_symbol = ?*struct__Z3_symbol;
pub const struct__Z3_config = opaque {
    pub const Z3_del_config = __root.Z3_del_config;
    pub const Z3_set_param_value = __root.Z3_set_param_value;
    pub const Z3_mk_context = __root.Z3_mk_context;
    pub const Z3_mk_context_rc = __root.Z3_mk_context_rc;
    pub const config = __root.Z3_del_config;
    pub const value = __root.Z3_set_param_value;
    pub const context = __root.Z3_mk_context;
    pub const rc = __root.Z3_mk_context_rc;
};
pub const Z3_config = ?*struct__Z3_config;
pub const struct__Z3_context = opaque {
    pub const Z3_del_context = __root.Z3_del_context;
    pub const Z3_inc_ref = __root.Z3_inc_ref;
    pub const Z3_dec_ref = __root.Z3_dec_ref;
    pub const Z3_update_param_value = __root.Z3_update_param_value;
    pub const Z3_get_global_param_descrs = __root.Z3_get_global_param_descrs;
    pub const Z3_interrupt = __root.Z3_interrupt;
    pub const Z3_enable_concurrent_dec_ref = __root.Z3_enable_concurrent_dec_ref;
    pub const Z3_mk_params = __root.Z3_mk_params;
    pub const Z3_params_inc_ref = __root.Z3_params_inc_ref;
    pub const Z3_params_dec_ref = __root.Z3_params_dec_ref;
    pub const Z3_params_set_bool = __root.Z3_params_set_bool;
    pub const Z3_params_set_uint = __root.Z3_params_set_uint;
    pub const Z3_params_set_double = __root.Z3_params_set_double;
    pub const Z3_params_set_symbol = __root.Z3_params_set_symbol;
    pub const Z3_params_to_string = __root.Z3_params_to_string;
    pub const Z3_params_validate = __root.Z3_params_validate;
    pub const Z3_param_descrs_inc_ref = __root.Z3_param_descrs_inc_ref;
    pub const Z3_param_descrs_dec_ref = __root.Z3_param_descrs_dec_ref;
    pub const Z3_param_descrs_get_kind = __root.Z3_param_descrs_get_kind;
    pub const Z3_param_descrs_size = __root.Z3_param_descrs_size;
    pub const Z3_param_descrs_get_name = __root.Z3_param_descrs_get_name;
    pub const Z3_param_descrs_get_documentation = __root.Z3_param_descrs_get_documentation;
    pub const Z3_param_descrs_to_string = __root.Z3_param_descrs_to_string;
    pub const Z3_mk_int_symbol = __root.Z3_mk_int_symbol;
    pub const Z3_mk_string_symbol = __root.Z3_mk_string_symbol;
    pub const Z3_mk_uninterpreted_sort = __root.Z3_mk_uninterpreted_sort;
    pub const Z3_mk_type_variable = __root.Z3_mk_type_variable;
    pub const Z3_mk_bool_sort = __root.Z3_mk_bool_sort;
    pub const Z3_mk_int_sort = __root.Z3_mk_int_sort;
    pub const Z3_mk_real_sort = __root.Z3_mk_real_sort;
    pub const Z3_mk_bv_sort = __root.Z3_mk_bv_sort;
    pub const Z3_mk_finite_domain_sort = __root.Z3_mk_finite_domain_sort;
    pub const Z3_mk_array_sort = __root.Z3_mk_array_sort;
    pub const Z3_mk_array_sort_n = __root.Z3_mk_array_sort_n;
    pub const Z3_mk_tuple_sort = __root.Z3_mk_tuple_sort;
    pub const Z3_mk_enumeration_sort = __root.Z3_mk_enumeration_sort;
    pub const Z3_mk_list_sort = __root.Z3_mk_list_sort;
    pub const Z3_mk_constructor = __root.Z3_mk_constructor;
    pub const Z3_constructor_num_fields = __root.Z3_constructor_num_fields;
    pub const Z3_del_constructor = __root.Z3_del_constructor;
    pub const Z3_mk_datatype = __root.Z3_mk_datatype;
    pub const Z3_mk_polymorphic_datatype = __root.Z3_mk_polymorphic_datatype;
    pub const Z3_mk_datatype_sort = __root.Z3_mk_datatype_sort;
    pub const Z3_mk_constructor_list = __root.Z3_mk_constructor_list;
    pub const Z3_del_constructor_list = __root.Z3_del_constructor_list;
    pub const Z3_mk_datatypes = __root.Z3_mk_datatypes;
    pub const Z3_query_constructor = __root.Z3_query_constructor;
    pub const Z3_mk_func_decl = __root.Z3_mk_func_decl;
    pub const Z3_mk_app = __root.Z3_mk_app;
    pub const Z3_mk_const = __root.Z3_mk_const;
    pub const Z3_mk_fresh_func_decl = __root.Z3_mk_fresh_func_decl;
    pub const Z3_mk_fresh_const = __root.Z3_mk_fresh_const;
    pub const Z3_mk_rec_func_decl = __root.Z3_mk_rec_func_decl;
    pub const Z3_add_rec_def = __root.Z3_add_rec_def;
    pub const Z3_mk_true = __root.Z3_mk_true;
    pub const Z3_mk_false = __root.Z3_mk_false;
    pub const Z3_mk_eq = __root.Z3_mk_eq;
    pub const Z3_mk_distinct = __root.Z3_mk_distinct;
    pub const Z3_mk_not = __root.Z3_mk_not;
    pub const Z3_mk_ite = __root.Z3_mk_ite;
    pub const Z3_mk_iff = __root.Z3_mk_iff;
    pub const Z3_mk_implies = __root.Z3_mk_implies;
    pub const Z3_mk_xor = __root.Z3_mk_xor;
    pub const Z3_mk_and = __root.Z3_mk_and;
    pub const Z3_mk_or = __root.Z3_mk_or;
    pub const Z3_mk_add = __root.Z3_mk_add;
    pub const Z3_mk_mul = __root.Z3_mk_mul;
    pub const Z3_mk_sub = __root.Z3_mk_sub;
    pub const Z3_mk_unary_minus = __root.Z3_mk_unary_minus;
    pub const Z3_mk_div = __root.Z3_mk_div;
    pub const Z3_mk_mod = __root.Z3_mk_mod;
    pub const Z3_mk_rem = __root.Z3_mk_rem;
    pub const Z3_mk_power = __root.Z3_mk_power;
    pub const Z3_mk_abs = __root.Z3_mk_abs;
    pub const Z3_mk_lt = __root.Z3_mk_lt;
    pub const Z3_mk_le = __root.Z3_mk_le;
    pub const Z3_mk_gt = __root.Z3_mk_gt;
    pub const Z3_mk_ge = __root.Z3_mk_ge;
    pub const Z3_mk_divides = __root.Z3_mk_divides;
    pub const Z3_mk_int2real = __root.Z3_mk_int2real;
    pub const Z3_mk_real2int = __root.Z3_mk_real2int;
    pub const Z3_mk_is_int = __root.Z3_mk_is_int;
    pub const Z3_mk_bvnot = __root.Z3_mk_bvnot;
    pub const Z3_mk_bvredand = __root.Z3_mk_bvredand;
    pub const Z3_mk_bvredor = __root.Z3_mk_bvredor;
    pub const Z3_mk_bvand = __root.Z3_mk_bvand;
    pub const Z3_mk_bvor = __root.Z3_mk_bvor;
    pub const Z3_mk_bvxor = __root.Z3_mk_bvxor;
    pub const Z3_mk_bvnand = __root.Z3_mk_bvnand;
    pub const Z3_mk_bvnor = __root.Z3_mk_bvnor;
    pub const Z3_mk_bvxnor = __root.Z3_mk_bvxnor;
    pub const Z3_mk_bvneg = __root.Z3_mk_bvneg;
    pub const Z3_mk_bvadd = __root.Z3_mk_bvadd;
    pub const Z3_mk_bvsub = __root.Z3_mk_bvsub;
    pub const Z3_mk_bvmul = __root.Z3_mk_bvmul;
    pub const Z3_mk_bvudiv = __root.Z3_mk_bvudiv;
    pub const Z3_mk_bvsdiv = __root.Z3_mk_bvsdiv;
    pub const Z3_mk_bvurem = __root.Z3_mk_bvurem;
    pub const Z3_mk_bvsrem = __root.Z3_mk_bvsrem;
    pub const Z3_mk_bvsmod = __root.Z3_mk_bvsmod;
    pub const Z3_mk_bvult = __root.Z3_mk_bvult;
    pub const Z3_mk_bvslt = __root.Z3_mk_bvslt;
    pub const Z3_mk_bvule = __root.Z3_mk_bvule;
    pub const Z3_mk_bvsle = __root.Z3_mk_bvsle;
    pub const Z3_mk_bvuge = __root.Z3_mk_bvuge;
    pub const Z3_mk_bvsge = __root.Z3_mk_bvsge;
    pub const Z3_mk_bvugt = __root.Z3_mk_bvugt;
    pub const Z3_mk_bvsgt = __root.Z3_mk_bvsgt;
    pub const Z3_mk_concat = __root.Z3_mk_concat;
    pub const Z3_mk_extract = __root.Z3_mk_extract;
    pub const Z3_mk_sign_ext = __root.Z3_mk_sign_ext;
    pub const Z3_mk_zero_ext = __root.Z3_mk_zero_ext;
    pub const Z3_mk_repeat = __root.Z3_mk_repeat;
    pub const Z3_mk_bit2bool = __root.Z3_mk_bit2bool;
    pub const Z3_mk_bvshl = __root.Z3_mk_bvshl;
    pub const Z3_mk_bvlshr = __root.Z3_mk_bvlshr;
    pub const Z3_mk_bvashr = __root.Z3_mk_bvashr;
    pub const Z3_mk_rotate_left = __root.Z3_mk_rotate_left;
    pub const Z3_mk_rotate_right = __root.Z3_mk_rotate_right;
    pub const Z3_mk_ext_rotate_left = __root.Z3_mk_ext_rotate_left;
    pub const Z3_mk_ext_rotate_right = __root.Z3_mk_ext_rotate_right;
    pub const Z3_mk_int2bv = __root.Z3_mk_int2bv;
    pub const Z3_mk_bv2int = __root.Z3_mk_bv2int;
    pub const Z3_mk_bvadd_no_overflow = __root.Z3_mk_bvadd_no_overflow;
    pub const Z3_mk_bvadd_no_underflow = __root.Z3_mk_bvadd_no_underflow;
    pub const Z3_mk_bvsub_no_overflow = __root.Z3_mk_bvsub_no_overflow;
    pub const Z3_mk_bvsub_no_underflow = __root.Z3_mk_bvsub_no_underflow;
    pub const Z3_mk_bvsdiv_no_overflow = __root.Z3_mk_bvsdiv_no_overflow;
    pub const Z3_mk_bvneg_no_overflow = __root.Z3_mk_bvneg_no_overflow;
    pub const Z3_mk_bvmul_no_overflow = __root.Z3_mk_bvmul_no_overflow;
    pub const Z3_mk_bvmul_no_underflow = __root.Z3_mk_bvmul_no_underflow;
    pub const Z3_mk_select = __root.Z3_mk_select;
    pub const Z3_mk_select_n = __root.Z3_mk_select_n;
    pub const Z3_mk_store = __root.Z3_mk_store;
    pub const Z3_mk_store_n = __root.Z3_mk_store_n;
    pub const Z3_mk_const_array = __root.Z3_mk_const_array;
    pub const Z3_mk_map = __root.Z3_mk_map;
    pub const Z3_mk_array_default = __root.Z3_mk_array_default;
    pub const Z3_mk_as_array = __root.Z3_mk_as_array;
    pub const Z3_mk_set_has_size = __root.Z3_mk_set_has_size;
    pub const Z3_mk_set_sort = __root.Z3_mk_set_sort;
    pub const Z3_mk_empty_set = __root.Z3_mk_empty_set;
    pub const Z3_mk_full_set = __root.Z3_mk_full_set;
    pub const Z3_mk_set_add = __root.Z3_mk_set_add;
    pub const Z3_mk_set_del = __root.Z3_mk_set_del;
    pub const Z3_mk_set_union = __root.Z3_mk_set_union;
    pub const Z3_mk_set_intersect = __root.Z3_mk_set_intersect;
    pub const Z3_mk_set_difference = __root.Z3_mk_set_difference;
    pub const Z3_mk_set_complement = __root.Z3_mk_set_complement;
    pub const Z3_mk_set_member = __root.Z3_mk_set_member;
    pub const Z3_mk_set_subset = __root.Z3_mk_set_subset;
    pub const Z3_mk_array_ext = __root.Z3_mk_array_ext;
    pub const Z3_mk_numeral = __root.Z3_mk_numeral;
    pub const Z3_mk_real = __root.Z3_mk_real;
    pub const Z3_mk_real_int64 = __root.Z3_mk_real_int64;
    pub const Z3_mk_int = __root.Z3_mk_int;
    pub const Z3_mk_unsigned_int = __root.Z3_mk_unsigned_int;
    pub const Z3_mk_int64 = __root.Z3_mk_int64;
    pub const Z3_mk_unsigned_int64 = __root.Z3_mk_unsigned_int64;
    pub const Z3_mk_bv_numeral = __root.Z3_mk_bv_numeral;
    pub const Z3_mk_seq_sort = __root.Z3_mk_seq_sort;
    pub const Z3_is_seq_sort = __root.Z3_is_seq_sort;
    pub const Z3_get_seq_sort_basis = __root.Z3_get_seq_sort_basis;
    pub const Z3_mk_re_sort = __root.Z3_mk_re_sort;
    pub const Z3_is_re_sort = __root.Z3_is_re_sort;
    pub const Z3_get_re_sort_basis = __root.Z3_get_re_sort_basis;
    pub const Z3_mk_string_sort = __root.Z3_mk_string_sort;
    pub const Z3_mk_char_sort = __root.Z3_mk_char_sort;
    pub const Z3_is_string_sort = __root.Z3_is_string_sort;
    pub const Z3_is_char_sort = __root.Z3_is_char_sort;
    pub const Z3_mk_string = __root.Z3_mk_string;
    pub const Z3_mk_lstring = __root.Z3_mk_lstring;
    pub const Z3_mk_u32string = __root.Z3_mk_u32string;
    pub const Z3_is_string = __root.Z3_is_string;
    pub const Z3_get_string = __root.Z3_get_string;
    pub const Z3_get_lstring = __root.Z3_get_lstring;
    pub const Z3_get_string_length = __root.Z3_get_string_length;
    pub const Z3_get_string_contents = __root.Z3_get_string_contents;
    pub const Z3_mk_seq_empty = __root.Z3_mk_seq_empty;
    pub const Z3_mk_seq_unit = __root.Z3_mk_seq_unit;
    pub const Z3_mk_seq_concat = __root.Z3_mk_seq_concat;
    pub const Z3_mk_seq_prefix = __root.Z3_mk_seq_prefix;
    pub const Z3_mk_seq_suffix = __root.Z3_mk_seq_suffix;
    pub const Z3_mk_seq_contains = __root.Z3_mk_seq_contains;
    pub const Z3_mk_str_lt = __root.Z3_mk_str_lt;
    pub const Z3_mk_str_le = __root.Z3_mk_str_le;
    pub const Z3_mk_seq_extract = __root.Z3_mk_seq_extract;
    pub const Z3_mk_seq_replace = __root.Z3_mk_seq_replace;
    pub const Z3_mk_seq_at = __root.Z3_mk_seq_at;
    pub const Z3_mk_seq_nth = __root.Z3_mk_seq_nth;
    pub const Z3_mk_seq_length = __root.Z3_mk_seq_length;
    pub const Z3_mk_seq_index = __root.Z3_mk_seq_index;
    pub const Z3_mk_seq_last_index = __root.Z3_mk_seq_last_index;
    pub const Z3_mk_seq_map = __root.Z3_mk_seq_map;
    pub const Z3_mk_seq_mapi = __root.Z3_mk_seq_mapi;
    pub const Z3_mk_seq_foldl = __root.Z3_mk_seq_foldl;
    pub const Z3_mk_seq_foldli = __root.Z3_mk_seq_foldli;
    pub const Z3_mk_str_to_int = __root.Z3_mk_str_to_int;
    pub const Z3_mk_int_to_str = __root.Z3_mk_int_to_str;
    pub const Z3_mk_string_to_code = __root.Z3_mk_string_to_code;
    pub const Z3_mk_string_from_code = __root.Z3_mk_string_from_code;
    pub const Z3_mk_ubv_to_str = __root.Z3_mk_ubv_to_str;
    pub const Z3_mk_sbv_to_str = __root.Z3_mk_sbv_to_str;
    pub const Z3_mk_seq_to_re = __root.Z3_mk_seq_to_re;
    pub const Z3_mk_seq_in_re = __root.Z3_mk_seq_in_re;
    pub const Z3_mk_re_plus = __root.Z3_mk_re_plus;
    pub const Z3_mk_re_star = __root.Z3_mk_re_star;
    pub const Z3_mk_re_option = __root.Z3_mk_re_option;
    pub const Z3_mk_re_union = __root.Z3_mk_re_union;
    pub const Z3_mk_re_concat = __root.Z3_mk_re_concat;
    pub const Z3_mk_re_range = __root.Z3_mk_re_range;
    pub const Z3_mk_re_allchar = __root.Z3_mk_re_allchar;
    pub const Z3_mk_re_loop = __root.Z3_mk_re_loop;
    pub const Z3_mk_re_power = __root.Z3_mk_re_power;
    pub const Z3_mk_re_intersect = __root.Z3_mk_re_intersect;
    pub const Z3_mk_re_complement = __root.Z3_mk_re_complement;
    pub const Z3_mk_re_diff = __root.Z3_mk_re_diff;
    pub const Z3_mk_re_empty = __root.Z3_mk_re_empty;
    pub const Z3_mk_re_full = __root.Z3_mk_re_full;
    pub const Z3_mk_char = __root.Z3_mk_char;
    pub const Z3_mk_char_le = __root.Z3_mk_char_le;
    pub const Z3_mk_char_to_int = __root.Z3_mk_char_to_int;
    pub const Z3_mk_char_to_bv = __root.Z3_mk_char_to_bv;
    pub const Z3_mk_char_from_bv = __root.Z3_mk_char_from_bv;
    pub const Z3_mk_char_is_digit = __root.Z3_mk_char_is_digit;
    pub const Z3_mk_linear_order = __root.Z3_mk_linear_order;
    pub const Z3_mk_partial_order = __root.Z3_mk_partial_order;
    pub const Z3_mk_piecewise_linear_order = __root.Z3_mk_piecewise_linear_order;
    pub const Z3_mk_tree_order = __root.Z3_mk_tree_order;
    pub const Z3_mk_transitive_closure = __root.Z3_mk_transitive_closure;
    pub const Z3_mk_pattern = __root.Z3_mk_pattern;
    pub const Z3_mk_bound = __root.Z3_mk_bound;
    pub const Z3_mk_forall = __root.Z3_mk_forall;
    pub const Z3_mk_exists = __root.Z3_mk_exists;
    pub const Z3_mk_quantifier = __root.Z3_mk_quantifier;
    pub const Z3_mk_quantifier_ex = __root.Z3_mk_quantifier_ex;
    pub const Z3_mk_forall_const = __root.Z3_mk_forall_const;
    pub const Z3_mk_exists_const = __root.Z3_mk_exists_const;
    pub const Z3_mk_quantifier_const = __root.Z3_mk_quantifier_const;
    pub const Z3_mk_quantifier_const_ex = __root.Z3_mk_quantifier_const_ex;
    pub const Z3_mk_lambda = __root.Z3_mk_lambda;
    pub const Z3_mk_lambda_const = __root.Z3_mk_lambda_const;
    pub const Z3_get_symbol_kind = __root.Z3_get_symbol_kind;
    pub const Z3_get_symbol_int = __root.Z3_get_symbol_int;
    pub const Z3_get_symbol_string = __root.Z3_get_symbol_string;
    pub const Z3_get_sort_name = __root.Z3_get_sort_name;
    pub const Z3_get_sort_id = __root.Z3_get_sort_id;
    pub const Z3_sort_to_ast = __root.Z3_sort_to_ast;
    pub const Z3_is_eq_sort = __root.Z3_is_eq_sort;
    pub const Z3_get_sort_kind = __root.Z3_get_sort_kind;
    pub const Z3_get_bv_sort_size = __root.Z3_get_bv_sort_size;
    pub const Z3_get_finite_domain_sort_size = __root.Z3_get_finite_domain_sort_size;
    pub const Z3_get_array_arity = __root.Z3_get_array_arity;
    pub const Z3_get_array_sort_domain = __root.Z3_get_array_sort_domain;
    pub const Z3_get_array_sort_domain_n = __root.Z3_get_array_sort_domain_n;
    pub const Z3_get_array_sort_range = __root.Z3_get_array_sort_range;
    pub const Z3_get_tuple_sort_mk_decl = __root.Z3_get_tuple_sort_mk_decl;
    pub const Z3_get_tuple_sort_num_fields = __root.Z3_get_tuple_sort_num_fields;
    pub const Z3_get_tuple_sort_field_decl = __root.Z3_get_tuple_sort_field_decl;
    pub const Z3_is_recursive_datatype_sort = __root.Z3_is_recursive_datatype_sort;
    pub const Z3_get_datatype_sort_num_constructors = __root.Z3_get_datatype_sort_num_constructors;
    pub const Z3_get_datatype_sort_constructor = __root.Z3_get_datatype_sort_constructor;
    pub const Z3_get_datatype_sort_recognizer = __root.Z3_get_datatype_sort_recognizer;
    pub const Z3_get_datatype_sort_constructor_accessor = __root.Z3_get_datatype_sort_constructor_accessor;
    pub const Z3_datatype_update_field = __root.Z3_datatype_update_field;
    pub const Z3_get_relation_arity = __root.Z3_get_relation_arity;
    pub const Z3_get_relation_column = __root.Z3_get_relation_column;
    pub const Z3_mk_atmost = __root.Z3_mk_atmost;
    pub const Z3_mk_atleast = __root.Z3_mk_atleast;
    pub const Z3_mk_pble = __root.Z3_mk_pble;
    pub const Z3_mk_pbge = __root.Z3_mk_pbge;
    pub const Z3_mk_pbeq = __root.Z3_mk_pbeq;
    pub const Z3_func_decl_to_ast = __root.Z3_func_decl_to_ast;
    pub const Z3_is_eq_func_decl = __root.Z3_is_eq_func_decl;
    pub const Z3_get_func_decl_id = __root.Z3_get_func_decl_id;
    pub const Z3_get_decl_name = __root.Z3_get_decl_name;
    pub const Z3_get_decl_kind = __root.Z3_get_decl_kind;
    pub const Z3_get_domain_size = __root.Z3_get_domain_size;
    pub const Z3_get_arity = __root.Z3_get_arity;
    pub const Z3_get_domain = __root.Z3_get_domain;
    pub const Z3_get_range = __root.Z3_get_range;
    pub const Z3_get_decl_num_parameters = __root.Z3_get_decl_num_parameters;
    pub const Z3_get_decl_parameter_kind = __root.Z3_get_decl_parameter_kind;
    pub const Z3_get_decl_int_parameter = __root.Z3_get_decl_int_parameter;
    pub const Z3_get_decl_double_parameter = __root.Z3_get_decl_double_parameter;
    pub const Z3_get_decl_symbol_parameter = __root.Z3_get_decl_symbol_parameter;
    pub const Z3_get_decl_sort_parameter = __root.Z3_get_decl_sort_parameter;
    pub const Z3_get_decl_ast_parameter = __root.Z3_get_decl_ast_parameter;
    pub const Z3_get_decl_func_decl_parameter = __root.Z3_get_decl_func_decl_parameter;
    pub const Z3_get_decl_rational_parameter = __root.Z3_get_decl_rational_parameter;
    pub const Z3_app_to_ast = __root.Z3_app_to_ast;
    pub const Z3_get_app_decl = __root.Z3_get_app_decl;
    pub const Z3_get_app_num_args = __root.Z3_get_app_num_args;
    pub const Z3_get_app_arg = __root.Z3_get_app_arg;
    pub const Z3_is_eq_ast = __root.Z3_is_eq_ast;
    pub const Z3_get_ast_id = __root.Z3_get_ast_id;
    pub const Z3_get_ast_hash = __root.Z3_get_ast_hash;
    pub const Z3_get_sort = __root.Z3_get_sort;
    pub const Z3_is_well_sorted = __root.Z3_is_well_sorted;
    pub const Z3_get_bool_value = __root.Z3_get_bool_value;
    pub const Z3_get_ast_kind = __root.Z3_get_ast_kind;
    pub const Z3_is_app = __root.Z3_is_app;
    pub const Z3_is_ground = __root.Z3_is_ground;
    pub const Z3_get_depth = __root.Z3_get_depth;
    pub const Z3_is_numeral_ast = __root.Z3_is_numeral_ast;
    pub const Z3_is_algebraic_number = __root.Z3_is_algebraic_number;
    pub const Z3_to_app = __root.Z3_to_app;
    pub const Z3_to_func_decl = __root.Z3_to_func_decl;
    pub const Z3_get_numeral_string = __root.Z3_get_numeral_string;
    pub const Z3_get_numeral_binary_string = __root.Z3_get_numeral_binary_string;
    pub const Z3_get_numeral_decimal_string = __root.Z3_get_numeral_decimal_string;
    pub const Z3_get_numeral_double = __root.Z3_get_numeral_double;
    pub const Z3_get_numerator = __root.Z3_get_numerator;
    pub const Z3_get_denominator = __root.Z3_get_denominator;
    pub const Z3_get_numeral_small = __root.Z3_get_numeral_small;
    pub const Z3_get_numeral_int = __root.Z3_get_numeral_int;
    pub const Z3_get_numeral_uint = __root.Z3_get_numeral_uint;
    pub const Z3_get_numeral_uint64 = __root.Z3_get_numeral_uint64;
    pub const Z3_get_numeral_int64 = __root.Z3_get_numeral_int64;
    pub const Z3_get_numeral_rational_int64 = __root.Z3_get_numeral_rational_int64;
    pub const Z3_get_algebraic_number_lower = __root.Z3_get_algebraic_number_lower;
    pub const Z3_get_algebraic_number_upper = __root.Z3_get_algebraic_number_upper;
    pub const Z3_pattern_to_ast = __root.Z3_pattern_to_ast;
    pub const Z3_get_pattern_num_terms = __root.Z3_get_pattern_num_terms;
    pub const Z3_get_pattern = __root.Z3_get_pattern;
    pub const Z3_get_index_value = __root.Z3_get_index_value;
    pub const Z3_is_quantifier_forall = __root.Z3_is_quantifier_forall;
    pub const Z3_is_quantifier_exists = __root.Z3_is_quantifier_exists;
    pub const Z3_is_lambda = __root.Z3_is_lambda;
    pub const Z3_get_quantifier_weight = __root.Z3_get_quantifier_weight;
    pub const Z3_get_quantifier_skolem_id = __root.Z3_get_quantifier_skolem_id;
    pub const Z3_get_quantifier_id = __root.Z3_get_quantifier_id;
    pub const Z3_get_quantifier_num_patterns = __root.Z3_get_quantifier_num_patterns;
    pub const Z3_get_quantifier_pattern_ast = __root.Z3_get_quantifier_pattern_ast;
    pub const Z3_get_quantifier_num_no_patterns = __root.Z3_get_quantifier_num_no_patterns;
    pub const Z3_get_quantifier_no_pattern_ast = __root.Z3_get_quantifier_no_pattern_ast;
    pub const Z3_get_quantifier_num_bound = __root.Z3_get_quantifier_num_bound;
    pub const Z3_get_quantifier_bound_name = __root.Z3_get_quantifier_bound_name;
    pub const Z3_get_quantifier_bound_sort = __root.Z3_get_quantifier_bound_sort;
    pub const Z3_get_quantifier_body = __root.Z3_get_quantifier_body;
    pub const Z3_simplify = __root.Z3_simplify;
    pub const Z3_simplify_ex = __root.Z3_simplify_ex;
    pub const Z3_simplify_get_help = __root.Z3_simplify_get_help;
    pub const Z3_simplify_get_param_descrs = __root.Z3_simplify_get_param_descrs;
    pub const Z3_update_term = __root.Z3_update_term;
    pub const Z3_substitute = __root.Z3_substitute;
    pub const Z3_substitute_vars = __root.Z3_substitute_vars;
    pub const Z3_substitute_funs = __root.Z3_substitute_funs;
    pub const Z3_translate = __root.Z3_translate;
    pub const Z3_mk_model = __root.Z3_mk_model;
    pub const Z3_model_inc_ref = __root.Z3_model_inc_ref;
    pub const Z3_model_dec_ref = __root.Z3_model_dec_ref;
    pub const Z3_model_eval = __root.Z3_model_eval;
    pub const Z3_model_get_const_interp = __root.Z3_model_get_const_interp;
    pub const Z3_model_has_interp = __root.Z3_model_has_interp;
    pub const Z3_model_get_func_interp = __root.Z3_model_get_func_interp;
    pub const Z3_model_get_num_consts = __root.Z3_model_get_num_consts;
    pub const Z3_model_get_const_decl = __root.Z3_model_get_const_decl;
    pub const Z3_model_get_num_funcs = __root.Z3_model_get_num_funcs;
    pub const Z3_model_get_func_decl = __root.Z3_model_get_func_decl;
    pub const Z3_model_get_num_sorts = __root.Z3_model_get_num_sorts;
    pub const Z3_model_get_sort = __root.Z3_model_get_sort;
    pub const Z3_model_get_sort_universe = __root.Z3_model_get_sort_universe;
    pub const Z3_model_translate = __root.Z3_model_translate;
    pub const Z3_is_as_array = __root.Z3_is_as_array;
    pub const Z3_get_as_array_func_decl = __root.Z3_get_as_array_func_decl;
    pub const Z3_add_func_interp = __root.Z3_add_func_interp;
    pub const Z3_add_const_interp = __root.Z3_add_const_interp;
    pub const Z3_func_interp_inc_ref = __root.Z3_func_interp_inc_ref;
    pub const Z3_func_interp_dec_ref = __root.Z3_func_interp_dec_ref;
    pub const Z3_func_interp_get_num_entries = __root.Z3_func_interp_get_num_entries;
    pub const Z3_func_interp_get_entry = __root.Z3_func_interp_get_entry;
    pub const Z3_func_interp_get_else = __root.Z3_func_interp_get_else;
    pub const Z3_func_interp_set_else = __root.Z3_func_interp_set_else;
    pub const Z3_func_interp_get_arity = __root.Z3_func_interp_get_arity;
    pub const Z3_func_interp_add_entry = __root.Z3_func_interp_add_entry;
    pub const Z3_func_entry_inc_ref = __root.Z3_func_entry_inc_ref;
    pub const Z3_func_entry_dec_ref = __root.Z3_func_entry_dec_ref;
    pub const Z3_func_entry_get_value = __root.Z3_func_entry_get_value;
    pub const Z3_func_entry_get_num_args = __root.Z3_func_entry_get_num_args;
    pub const Z3_func_entry_get_arg = __root.Z3_func_entry_get_arg;
    pub const Z3_set_ast_print_mode = __root.Z3_set_ast_print_mode;
    pub const Z3_ast_to_string = __root.Z3_ast_to_string;
    pub const Z3_pattern_to_string = __root.Z3_pattern_to_string;
    pub const Z3_sort_to_string = __root.Z3_sort_to_string;
    pub const Z3_func_decl_to_string = __root.Z3_func_decl_to_string;
    pub const Z3_model_to_string = __root.Z3_model_to_string;
    pub const Z3_benchmark_to_smtlib_string = __root.Z3_benchmark_to_smtlib_string;
    pub const Z3_parse_smtlib2_string = __root.Z3_parse_smtlib2_string;
    pub const Z3_parse_smtlib2_file = __root.Z3_parse_smtlib2_file;
    pub const Z3_eval_smtlib2_string = __root.Z3_eval_smtlib2_string;
    pub const Z3_mk_parser_context = __root.Z3_mk_parser_context;
    pub const Z3_parser_context_inc_ref = __root.Z3_parser_context_inc_ref;
    pub const Z3_parser_context_dec_ref = __root.Z3_parser_context_dec_ref;
    pub const Z3_parser_context_add_sort = __root.Z3_parser_context_add_sort;
    pub const Z3_parser_context_add_decl = __root.Z3_parser_context_add_decl;
    pub const Z3_parser_context_from_string = __root.Z3_parser_context_from_string;
    pub const Z3_get_error_code = __root.Z3_get_error_code;
    pub const Z3_set_error_handler = __root.Z3_set_error_handler;
    pub const Z3_set_error = __root.Z3_set_error;
    pub const Z3_get_error_msg = __root.Z3_get_error_msg;
    pub const Z3_mk_goal = __root.Z3_mk_goal;
    pub const Z3_goal_inc_ref = __root.Z3_goal_inc_ref;
    pub const Z3_goal_dec_ref = __root.Z3_goal_dec_ref;
    pub const Z3_goal_precision = __root.Z3_goal_precision;
    pub const Z3_goal_assert = __root.Z3_goal_assert;
    pub const Z3_goal_inconsistent = __root.Z3_goal_inconsistent;
    pub const Z3_goal_depth = __root.Z3_goal_depth;
    pub const Z3_goal_reset = __root.Z3_goal_reset;
    pub const Z3_goal_size = __root.Z3_goal_size;
    pub const Z3_goal_formula = __root.Z3_goal_formula;
    pub const Z3_goal_num_exprs = __root.Z3_goal_num_exprs;
    pub const Z3_goal_is_decided_sat = __root.Z3_goal_is_decided_sat;
    pub const Z3_goal_is_decided_unsat = __root.Z3_goal_is_decided_unsat;
    pub const Z3_goal_translate = __root.Z3_goal_translate;
    pub const Z3_goal_convert_model = __root.Z3_goal_convert_model;
    pub const Z3_goal_to_string = __root.Z3_goal_to_string;
    pub const Z3_goal_to_dimacs_string = __root.Z3_goal_to_dimacs_string;
    pub const Z3_mk_tactic = __root.Z3_mk_tactic;
    pub const Z3_tactic_inc_ref = __root.Z3_tactic_inc_ref;
    pub const Z3_tactic_dec_ref = __root.Z3_tactic_dec_ref;
    pub const Z3_mk_probe = __root.Z3_mk_probe;
    pub const Z3_probe_inc_ref = __root.Z3_probe_inc_ref;
    pub const Z3_probe_dec_ref = __root.Z3_probe_dec_ref;
    pub const Z3_tactic_and_then = __root.Z3_tactic_and_then;
    pub const Z3_tactic_or_else = __root.Z3_tactic_or_else;
    pub const Z3_tactic_par_or = __root.Z3_tactic_par_or;
    pub const Z3_tactic_par_and_then = __root.Z3_tactic_par_and_then;
    pub const Z3_tactic_try_for = __root.Z3_tactic_try_for;
    pub const Z3_tactic_when = __root.Z3_tactic_when;
    pub const Z3_tactic_cond = __root.Z3_tactic_cond;
    pub const Z3_tactic_repeat = __root.Z3_tactic_repeat;
    pub const Z3_tactic_skip = __root.Z3_tactic_skip;
    pub const Z3_tactic_fail = __root.Z3_tactic_fail;
    pub const Z3_tactic_fail_if = __root.Z3_tactic_fail_if;
    pub const Z3_tactic_fail_if_not_decided = __root.Z3_tactic_fail_if_not_decided;
    pub const Z3_tactic_using_params = __root.Z3_tactic_using_params;
    pub const Z3_mk_simplifier = __root.Z3_mk_simplifier;
    pub const Z3_simplifier_inc_ref = __root.Z3_simplifier_inc_ref;
    pub const Z3_simplifier_dec_ref = __root.Z3_simplifier_dec_ref;
    pub const Z3_solver_add_simplifier = __root.Z3_solver_add_simplifier;
    pub const Z3_simplifier_and_then = __root.Z3_simplifier_and_then;
    pub const Z3_simplifier_using_params = __root.Z3_simplifier_using_params;
    pub const Z3_get_num_simplifiers = __root.Z3_get_num_simplifiers;
    pub const Z3_get_simplifier_name = __root.Z3_get_simplifier_name;
    pub const Z3_simplifier_get_help = __root.Z3_simplifier_get_help;
    pub const Z3_simplifier_get_param_descrs = __root.Z3_simplifier_get_param_descrs;
    pub const Z3_simplifier_get_descr = __root.Z3_simplifier_get_descr;
    pub const Z3_probe_const = __root.Z3_probe_const;
    pub const Z3_probe_lt = __root.Z3_probe_lt;
    pub const Z3_probe_gt = __root.Z3_probe_gt;
    pub const Z3_probe_le = __root.Z3_probe_le;
    pub const Z3_probe_ge = __root.Z3_probe_ge;
    pub const Z3_probe_eq = __root.Z3_probe_eq;
    pub const Z3_probe_and = __root.Z3_probe_and;
    pub const Z3_probe_or = __root.Z3_probe_or;
    pub const Z3_probe_not = __root.Z3_probe_not;
    pub const Z3_get_num_tactics = __root.Z3_get_num_tactics;
    pub const Z3_get_tactic_name = __root.Z3_get_tactic_name;
    pub const Z3_get_num_probes = __root.Z3_get_num_probes;
    pub const Z3_get_probe_name = __root.Z3_get_probe_name;
    pub const Z3_tactic_get_help = __root.Z3_tactic_get_help;
    pub const Z3_tactic_get_param_descrs = __root.Z3_tactic_get_param_descrs;
    pub const Z3_tactic_get_descr = __root.Z3_tactic_get_descr;
    pub const Z3_probe_get_descr = __root.Z3_probe_get_descr;
    pub const Z3_probe_apply = __root.Z3_probe_apply;
    pub const Z3_tactic_apply = __root.Z3_tactic_apply;
    pub const Z3_tactic_apply_ex = __root.Z3_tactic_apply_ex;
    pub const Z3_apply_result_inc_ref = __root.Z3_apply_result_inc_ref;
    pub const Z3_apply_result_dec_ref = __root.Z3_apply_result_dec_ref;
    pub const Z3_apply_result_to_string = __root.Z3_apply_result_to_string;
    pub const Z3_apply_result_get_num_subgoals = __root.Z3_apply_result_get_num_subgoals;
    pub const Z3_apply_result_get_subgoal = __root.Z3_apply_result_get_subgoal;
    pub const Z3_mk_solver = __root.Z3_mk_solver;
    pub const Z3_mk_simple_solver = __root.Z3_mk_simple_solver;
    pub const Z3_mk_solver_for_logic = __root.Z3_mk_solver_for_logic;
    pub const Z3_mk_solver_from_tactic = __root.Z3_mk_solver_from_tactic;
    pub const Z3_solver_translate = __root.Z3_solver_translate;
    pub const Z3_solver_import_model_converter = __root.Z3_solver_import_model_converter;
    pub const Z3_solver_get_help = __root.Z3_solver_get_help;
    pub const Z3_solver_get_param_descrs = __root.Z3_solver_get_param_descrs;
    pub const Z3_solver_set_params = __root.Z3_solver_set_params;
    pub const Z3_solver_inc_ref = __root.Z3_solver_inc_ref;
    pub const Z3_solver_dec_ref = __root.Z3_solver_dec_ref;
    pub const Z3_solver_interrupt = __root.Z3_solver_interrupt;
    pub const Z3_solver_push = __root.Z3_solver_push;
    pub const Z3_solver_pop = __root.Z3_solver_pop;
    pub const Z3_solver_reset = __root.Z3_solver_reset;
    pub const Z3_solver_get_num_scopes = __root.Z3_solver_get_num_scopes;
    pub const Z3_solver_assert = __root.Z3_solver_assert;
    pub const Z3_solver_assert_and_track = __root.Z3_solver_assert_and_track;
    pub const Z3_solver_from_file = __root.Z3_solver_from_file;
    pub const Z3_solver_from_string = __root.Z3_solver_from_string;
    pub const Z3_solver_get_assertions = __root.Z3_solver_get_assertions;
    pub const Z3_solver_get_units = __root.Z3_solver_get_units;
    pub const Z3_solver_get_trail = __root.Z3_solver_get_trail;
    pub const Z3_solver_get_non_units = __root.Z3_solver_get_non_units;
    pub const Z3_solver_get_levels = __root.Z3_solver_get_levels;
    pub const Z3_solver_congruence_root = __root.Z3_solver_congruence_root;
    pub const Z3_solver_congruence_next = __root.Z3_solver_congruence_next;
    pub const Z3_solver_congruence_explain = __root.Z3_solver_congruence_explain;
    pub const Z3_solver_solve_for = __root.Z3_solver_solve_for;
    pub const Z3_solver_register_on_clause = __root.Z3_solver_register_on_clause;
    pub const Z3_solver_propagate_init = __root.Z3_solver_propagate_init;
    pub const Z3_solver_propagate_fixed = __root.Z3_solver_propagate_fixed;
    pub const Z3_solver_propagate_final = __root.Z3_solver_propagate_final;
    pub const Z3_solver_propagate_eq = __root.Z3_solver_propagate_eq;
    pub const Z3_solver_propagate_diseq = __root.Z3_solver_propagate_diseq;
    pub const Z3_solver_propagate_created = __root.Z3_solver_propagate_created;
    pub const Z3_solver_propagate_decide = __root.Z3_solver_propagate_decide;
    pub const Z3_solver_propagate_on_binding = __root.Z3_solver_propagate_on_binding;
    pub const Z3_solver_next_split = __root.Z3_solver_next_split;
    pub const Z3_solver_propagate_declare = __root.Z3_solver_propagate_declare;
    pub const Z3_solver_propagate_register = __root.Z3_solver_propagate_register;
    pub const Z3_solver_propagate_register_cb = __root.Z3_solver_propagate_register_cb;
    pub const Z3_solver_propagate_consequence = __root.Z3_solver_propagate_consequence;
    pub const Z3_solver_set_initial_value = __root.Z3_solver_set_initial_value;
    pub const Z3_solver_check = __root.Z3_solver_check;
    pub const Z3_solver_check_assumptions = __root.Z3_solver_check_assumptions;
    pub const Z3_get_implied_equalities = __root.Z3_get_implied_equalities;
    pub const Z3_solver_get_consequences = __root.Z3_solver_get_consequences;
    pub const Z3_solver_cube = __root.Z3_solver_cube;
    pub const Z3_solver_get_model = __root.Z3_solver_get_model;
    pub const Z3_solver_get_proof = __root.Z3_solver_get_proof;
    pub const Z3_solver_get_unsat_core = __root.Z3_solver_get_unsat_core;
    pub const Z3_solver_get_reason_unknown = __root.Z3_solver_get_reason_unknown;
    pub const Z3_solver_get_statistics = __root.Z3_solver_get_statistics;
    pub const Z3_solver_to_string = __root.Z3_solver_to_string;
    pub const Z3_solver_to_dimacs_string = __root.Z3_solver_to_dimacs_string;
    pub const Z3_stats_to_string = __root.Z3_stats_to_string;
    pub const Z3_stats_inc_ref = __root.Z3_stats_inc_ref;
    pub const Z3_stats_dec_ref = __root.Z3_stats_dec_ref;
    pub const Z3_stats_size = __root.Z3_stats_size;
    pub const Z3_stats_get_key = __root.Z3_stats_get_key;
    pub const Z3_stats_is_uint = __root.Z3_stats_is_uint;
    pub const Z3_stats_is_double = __root.Z3_stats_is_double;
    pub const Z3_stats_get_uint_value = __root.Z3_stats_get_uint_value;
    pub const Z3_stats_get_double_value = __root.Z3_stats_get_double_value;
    pub const Z3_mk_ast_vector = __root.Z3_mk_ast_vector;
    pub const Z3_ast_vector_inc_ref = __root.Z3_ast_vector_inc_ref;
    pub const Z3_ast_vector_dec_ref = __root.Z3_ast_vector_dec_ref;
    pub const Z3_ast_vector_size = __root.Z3_ast_vector_size;
    pub const Z3_ast_vector_get = __root.Z3_ast_vector_get;
    pub const Z3_ast_vector_set = __root.Z3_ast_vector_set;
    pub const Z3_ast_vector_resize = __root.Z3_ast_vector_resize;
    pub const Z3_ast_vector_push = __root.Z3_ast_vector_push;
    pub const Z3_ast_vector_translate = __root.Z3_ast_vector_translate;
    pub const Z3_ast_vector_to_string = __root.Z3_ast_vector_to_string;
    pub const Z3_mk_ast_map = __root.Z3_mk_ast_map;
    pub const Z3_ast_map_inc_ref = __root.Z3_ast_map_inc_ref;
    pub const Z3_ast_map_dec_ref = __root.Z3_ast_map_dec_ref;
    pub const Z3_ast_map_contains = __root.Z3_ast_map_contains;
    pub const Z3_ast_map_find = __root.Z3_ast_map_find;
    pub const Z3_ast_map_insert = __root.Z3_ast_map_insert;
    pub const Z3_ast_map_erase = __root.Z3_ast_map_erase;
    pub const Z3_ast_map_reset = __root.Z3_ast_map_reset;
    pub const Z3_ast_map_size = __root.Z3_ast_map_size;
    pub const Z3_ast_map_keys = __root.Z3_ast_map_keys;
    pub const Z3_ast_map_to_string = __root.Z3_ast_map_to_string;
    pub const Z3_algebraic_is_value = __root.Z3_algebraic_is_value;
    pub const Z3_algebraic_is_pos = __root.Z3_algebraic_is_pos;
    pub const Z3_algebraic_is_neg = __root.Z3_algebraic_is_neg;
    pub const Z3_algebraic_is_zero = __root.Z3_algebraic_is_zero;
    pub const Z3_algebraic_sign = __root.Z3_algebraic_sign;
    pub const Z3_algebraic_add = __root.Z3_algebraic_add;
    pub const Z3_algebraic_sub = __root.Z3_algebraic_sub;
    pub const Z3_algebraic_mul = __root.Z3_algebraic_mul;
    pub const Z3_algebraic_div = __root.Z3_algebraic_div;
    pub const Z3_algebraic_root = __root.Z3_algebraic_root;
    pub const Z3_algebraic_power = __root.Z3_algebraic_power;
    pub const Z3_algebraic_lt = __root.Z3_algebraic_lt;
    pub const Z3_algebraic_gt = __root.Z3_algebraic_gt;
    pub const Z3_algebraic_le = __root.Z3_algebraic_le;
    pub const Z3_algebraic_ge = __root.Z3_algebraic_ge;
    pub const Z3_algebraic_eq = __root.Z3_algebraic_eq;
    pub const Z3_algebraic_neq = __root.Z3_algebraic_neq;
    pub const Z3_algebraic_roots = __root.Z3_algebraic_roots;
    pub const Z3_algebraic_eval = __root.Z3_algebraic_eval;
    pub const Z3_algebraic_get_poly = __root.Z3_algebraic_get_poly;
    pub const Z3_algebraic_get_i = __root.Z3_algebraic_get_i;
    pub const Z3_polynomial_subresultants = __root.Z3_polynomial_subresultants;
    pub const Z3_rcf_del = __root.Z3_rcf_del;
    pub const Z3_rcf_mk_rational = __root.Z3_rcf_mk_rational;
    pub const Z3_rcf_mk_small_int = __root.Z3_rcf_mk_small_int;
    pub const Z3_rcf_mk_pi = __root.Z3_rcf_mk_pi;
    pub const Z3_rcf_mk_e = __root.Z3_rcf_mk_e;
    pub const Z3_rcf_mk_infinitesimal = __root.Z3_rcf_mk_infinitesimal;
    pub const Z3_rcf_mk_roots = __root.Z3_rcf_mk_roots;
    pub const Z3_rcf_add = __root.Z3_rcf_add;
    pub const Z3_rcf_sub = __root.Z3_rcf_sub;
    pub const Z3_rcf_mul = __root.Z3_rcf_mul;
    pub const Z3_rcf_div = __root.Z3_rcf_div;
    pub const Z3_rcf_neg = __root.Z3_rcf_neg;
    pub const Z3_rcf_inv = __root.Z3_rcf_inv;
    pub const Z3_rcf_power = __root.Z3_rcf_power;
    pub const Z3_rcf_lt = __root.Z3_rcf_lt;
    pub const Z3_rcf_gt = __root.Z3_rcf_gt;
    pub const Z3_rcf_le = __root.Z3_rcf_le;
    pub const Z3_rcf_ge = __root.Z3_rcf_ge;
    pub const Z3_rcf_eq = __root.Z3_rcf_eq;
    pub const Z3_rcf_neq = __root.Z3_rcf_neq;
    pub const Z3_rcf_num_to_string = __root.Z3_rcf_num_to_string;
    pub const Z3_rcf_num_to_decimal_string = __root.Z3_rcf_num_to_decimal_string;
    pub const Z3_rcf_get_numerator_denominator = __root.Z3_rcf_get_numerator_denominator;
    pub const Z3_rcf_is_rational = __root.Z3_rcf_is_rational;
    pub const Z3_rcf_is_algebraic = __root.Z3_rcf_is_algebraic;
    pub const Z3_rcf_is_infinitesimal = __root.Z3_rcf_is_infinitesimal;
    pub const Z3_rcf_is_transcendental = __root.Z3_rcf_is_transcendental;
    pub const Z3_rcf_extension_index = __root.Z3_rcf_extension_index;
    pub const Z3_rcf_transcendental_name = __root.Z3_rcf_transcendental_name;
    pub const Z3_rcf_infinitesimal_name = __root.Z3_rcf_infinitesimal_name;
    pub const Z3_rcf_num_coefficients = __root.Z3_rcf_num_coefficients;
    pub const Z3_rcf_coefficient = __root.Z3_rcf_coefficient;
    pub const Z3_rcf_interval = __root.Z3_rcf_interval;
    pub const Z3_rcf_num_sign_conditions = __root.Z3_rcf_num_sign_conditions;
    pub const Z3_rcf_sign_condition_sign = __root.Z3_rcf_sign_condition_sign;
    pub const Z3_rcf_num_sign_condition_coefficients = __root.Z3_rcf_num_sign_condition_coefficients;
    pub const Z3_rcf_sign_condition_coefficient = __root.Z3_rcf_sign_condition_coefficient;
    pub const Z3_mk_fixedpoint = __root.Z3_mk_fixedpoint;
    pub const Z3_fixedpoint_inc_ref = __root.Z3_fixedpoint_inc_ref;
    pub const Z3_fixedpoint_dec_ref = __root.Z3_fixedpoint_dec_ref;
    pub const Z3_fixedpoint_add_rule = __root.Z3_fixedpoint_add_rule;
    pub const Z3_fixedpoint_add_fact = __root.Z3_fixedpoint_add_fact;
    pub const Z3_fixedpoint_assert = __root.Z3_fixedpoint_assert;
    pub const Z3_fixedpoint_query = __root.Z3_fixedpoint_query;
    pub const Z3_fixedpoint_query_relations = __root.Z3_fixedpoint_query_relations;
    pub const Z3_fixedpoint_get_answer = __root.Z3_fixedpoint_get_answer;
    pub const Z3_fixedpoint_get_reason_unknown = __root.Z3_fixedpoint_get_reason_unknown;
    pub const Z3_fixedpoint_update_rule = __root.Z3_fixedpoint_update_rule;
    pub const Z3_fixedpoint_get_num_levels = __root.Z3_fixedpoint_get_num_levels;
    pub const Z3_fixedpoint_get_cover_delta = __root.Z3_fixedpoint_get_cover_delta;
    pub const Z3_fixedpoint_add_cover = __root.Z3_fixedpoint_add_cover;
    pub const Z3_fixedpoint_get_statistics = __root.Z3_fixedpoint_get_statistics;
    pub const Z3_fixedpoint_register_relation = __root.Z3_fixedpoint_register_relation;
    pub const Z3_fixedpoint_set_predicate_representation = __root.Z3_fixedpoint_set_predicate_representation;
    pub const Z3_fixedpoint_get_rules = __root.Z3_fixedpoint_get_rules;
    pub const Z3_fixedpoint_get_assertions = __root.Z3_fixedpoint_get_assertions;
    pub const Z3_fixedpoint_set_params = __root.Z3_fixedpoint_set_params;
    pub const Z3_fixedpoint_get_help = __root.Z3_fixedpoint_get_help;
    pub const Z3_fixedpoint_get_param_descrs = __root.Z3_fixedpoint_get_param_descrs;
    pub const Z3_fixedpoint_to_string = __root.Z3_fixedpoint_to_string;
    pub const Z3_fixedpoint_from_string = __root.Z3_fixedpoint_from_string;
    pub const Z3_fixedpoint_from_file = __root.Z3_fixedpoint_from_file;
    pub const Z3_fixedpoint_init = __root.Z3_fixedpoint_init;
    pub const Z3_fixedpoint_set_reduce_assign_callback = __root.Z3_fixedpoint_set_reduce_assign_callback;
    pub const Z3_fixedpoint_set_reduce_app_callback = __root.Z3_fixedpoint_set_reduce_app_callback;
    pub const Z3_fixedpoint_add_callback = __root.Z3_fixedpoint_add_callback;
    pub const Z3_fixedpoint_add_constraint = __root.Z3_fixedpoint_add_constraint;
    pub const Z3_mk_optimize = __root.Z3_mk_optimize;
    pub const Z3_optimize_inc_ref = __root.Z3_optimize_inc_ref;
    pub const Z3_optimize_dec_ref = __root.Z3_optimize_dec_ref;
    pub const Z3_optimize_assert = __root.Z3_optimize_assert;
    pub const Z3_optimize_assert_and_track = __root.Z3_optimize_assert_and_track;
    pub const Z3_optimize_assert_soft = __root.Z3_optimize_assert_soft;
    pub const Z3_optimize_maximize = __root.Z3_optimize_maximize;
    pub const Z3_optimize_minimize = __root.Z3_optimize_minimize;
    pub const Z3_optimize_push = __root.Z3_optimize_push;
    pub const Z3_optimize_pop = __root.Z3_optimize_pop;
    pub const Z3_optimize_set_initial_value = __root.Z3_optimize_set_initial_value;
    pub const Z3_optimize_check = __root.Z3_optimize_check;
    pub const Z3_optimize_get_reason_unknown = __root.Z3_optimize_get_reason_unknown;
    pub const Z3_optimize_get_model = __root.Z3_optimize_get_model;
    pub const Z3_optimize_get_unsat_core = __root.Z3_optimize_get_unsat_core;
    pub const Z3_optimize_set_params = __root.Z3_optimize_set_params;
    pub const Z3_optimize_get_param_descrs = __root.Z3_optimize_get_param_descrs;
    pub const Z3_optimize_get_lower = __root.Z3_optimize_get_lower;
    pub const Z3_optimize_get_upper = __root.Z3_optimize_get_upper;
    pub const Z3_optimize_get_lower_as_vector = __root.Z3_optimize_get_lower_as_vector;
    pub const Z3_optimize_get_upper_as_vector = __root.Z3_optimize_get_upper_as_vector;
    pub const Z3_optimize_to_string = __root.Z3_optimize_to_string;
    pub const Z3_optimize_from_string = __root.Z3_optimize_from_string;
    pub const Z3_optimize_from_file = __root.Z3_optimize_from_file;
    pub const Z3_optimize_get_help = __root.Z3_optimize_get_help;
    pub const Z3_optimize_get_statistics = __root.Z3_optimize_get_statistics;
    pub const Z3_optimize_get_assertions = __root.Z3_optimize_get_assertions;
    pub const Z3_optimize_get_objectives = __root.Z3_optimize_get_objectives;
    pub const Z3_optimize_register_model_eh = __root.Z3_optimize_register_model_eh;
    pub const Z3_mk_fpa_rounding_mode_sort = __root.Z3_mk_fpa_rounding_mode_sort;
    pub const Z3_mk_fpa_round_nearest_ties_to_even = __root.Z3_mk_fpa_round_nearest_ties_to_even;
    pub const Z3_mk_fpa_rne = __root.Z3_mk_fpa_rne;
    pub const Z3_mk_fpa_round_nearest_ties_to_away = __root.Z3_mk_fpa_round_nearest_ties_to_away;
    pub const Z3_mk_fpa_rna = __root.Z3_mk_fpa_rna;
    pub const Z3_mk_fpa_round_toward_positive = __root.Z3_mk_fpa_round_toward_positive;
    pub const Z3_mk_fpa_rtp = __root.Z3_mk_fpa_rtp;
    pub const Z3_mk_fpa_round_toward_negative = __root.Z3_mk_fpa_round_toward_negative;
    pub const Z3_mk_fpa_rtn = __root.Z3_mk_fpa_rtn;
    pub const Z3_mk_fpa_round_toward_zero = __root.Z3_mk_fpa_round_toward_zero;
    pub const Z3_mk_fpa_rtz = __root.Z3_mk_fpa_rtz;
    pub const Z3_mk_fpa_sort = __root.Z3_mk_fpa_sort;
    pub const Z3_mk_fpa_sort_half = __root.Z3_mk_fpa_sort_half;
    pub const Z3_mk_fpa_sort_16 = __root.Z3_mk_fpa_sort_16;
    pub const Z3_mk_fpa_sort_single = __root.Z3_mk_fpa_sort_single;
    pub const Z3_mk_fpa_sort_32 = __root.Z3_mk_fpa_sort_32;
    pub const Z3_mk_fpa_sort_double = __root.Z3_mk_fpa_sort_double;
    pub const Z3_mk_fpa_sort_64 = __root.Z3_mk_fpa_sort_64;
    pub const Z3_mk_fpa_sort_quadruple = __root.Z3_mk_fpa_sort_quadruple;
    pub const Z3_mk_fpa_sort_128 = __root.Z3_mk_fpa_sort_128;
    pub const Z3_mk_fpa_nan = __root.Z3_mk_fpa_nan;
    pub const Z3_mk_fpa_inf = __root.Z3_mk_fpa_inf;
    pub const Z3_mk_fpa_zero = __root.Z3_mk_fpa_zero;
    pub const Z3_mk_fpa_fp = __root.Z3_mk_fpa_fp;
    pub const Z3_mk_fpa_numeral_float = __root.Z3_mk_fpa_numeral_float;
    pub const Z3_mk_fpa_numeral_double = __root.Z3_mk_fpa_numeral_double;
    pub const Z3_mk_fpa_numeral_int = __root.Z3_mk_fpa_numeral_int;
    pub const Z3_mk_fpa_numeral_int_uint = __root.Z3_mk_fpa_numeral_int_uint;
    pub const Z3_mk_fpa_numeral_int64_uint64 = __root.Z3_mk_fpa_numeral_int64_uint64;
    pub const Z3_mk_fpa_abs = __root.Z3_mk_fpa_abs;
    pub const Z3_mk_fpa_neg = __root.Z3_mk_fpa_neg;
    pub const Z3_mk_fpa_add = __root.Z3_mk_fpa_add;
    pub const Z3_mk_fpa_sub = __root.Z3_mk_fpa_sub;
    pub const Z3_mk_fpa_mul = __root.Z3_mk_fpa_mul;
    pub const Z3_mk_fpa_div = __root.Z3_mk_fpa_div;
    pub const Z3_mk_fpa_fma = __root.Z3_mk_fpa_fma;
    pub const Z3_mk_fpa_sqrt = __root.Z3_mk_fpa_sqrt;
    pub const Z3_mk_fpa_rem = __root.Z3_mk_fpa_rem;
    pub const Z3_mk_fpa_round_to_integral = __root.Z3_mk_fpa_round_to_integral;
    pub const Z3_mk_fpa_min = __root.Z3_mk_fpa_min;
    pub const Z3_mk_fpa_max = __root.Z3_mk_fpa_max;
    pub const Z3_mk_fpa_leq = __root.Z3_mk_fpa_leq;
    pub const Z3_mk_fpa_lt = __root.Z3_mk_fpa_lt;
    pub const Z3_mk_fpa_geq = __root.Z3_mk_fpa_geq;
    pub const Z3_mk_fpa_gt = __root.Z3_mk_fpa_gt;
    pub const Z3_mk_fpa_eq = __root.Z3_mk_fpa_eq;
    pub const Z3_mk_fpa_is_normal = __root.Z3_mk_fpa_is_normal;
    pub const Z3_mk_fpa_is_subnormal = __root.Z3_mk_fpa_is_subnormal;
    pub const Z3_mk_fpa_is_zero = __root.Z3_mk_fpa_is_zero;
    pub const Z3_mk_fpa_is_infinite = __root.Z3_mk_fpa_is_infinite;
    pub const Z3_mk_fpa_is_nan = __root.Z3_mk_fpa_is_nan;
    pub const Z3_mk_fpa_is_negative = __root.Z3_mk_fpa_is_negative;
    pub const Z3_mk_fpa_is_positive = __root.Z3_mk_fpa_is_positive;
    pub const Z3_mk_fpa_to_fp_bv = __root.Z3_mk_fpa_to_fp_bv;
    pub const Z3_mk_fpa_to_fp_float = __root.Z3_mk_fpa_to_fp_float;
    pub const Z3_mk_fpa_to_fp_real = __root.Z3_mk_fpa_to_fp_real;
    pub const Z3_mk_fpa_to_fp_signed = __root.Z3_mk_fpa_to_fp_signed;
    pub const Z3_mk_fpa_to_fp_unsigned = __root.Z3_mk_fpa_to_fp_unsigned;
    pub const Z3_mk_fpa_to_ubv = __root.Z3_mk_fpa_to_ubv;
    pub const Z3_mk_fpa_to_sbv = __root.Z3_mk_fpa_to_sbv;
    pub const Z3_mk_fpa_to_real = __root.Z3_mk_fpa_to_real;
    pub const Z3_fpa_get_ebits = __root.Z3_fpa_get_ebits;
    pub const Z3_fpa_get_sbits = __root.Z3_fpa_get_sbits;
    pub const Z3_fpa_is_numeral_nan = __root.Z3_fpa_is_numeral_nan;
    pub const Z3_fpa_is_numeral_inf = __root.Z3_fpa_is_numeral_inf;
    pub const Z3_fpa_is_numeral_zero = __root.Z3_fpa_is_numeral_zero;
    pub const Z3_fpa_is_numeral_normal = __root.Z3_fpa_is_numeral_normal;
    pub const Z3_fpa_is_numeral_subnormal = __root.Z3_fpa_is_numeral_subnormal;
    pub const Z3_fpa_is_numeral_positive = __root.Z3_fpa_is_numeral_positive;
    pub const Z3_fpa_is_numeral_negative = __root.Z3_fpa_is_numeral_negative;
    pub const Z3_fpa_get_numeral_sign_bv = __root.Z3_fpa_get_numeral_sign_bv;
    pub const Z3_fpa_get_numeral_significand_bv = __root.Z3_fpa_get_numeral_significand_bv;
    pub const Z3_fpa_get_numeral_sign = __root.Z3_fpa_get_numeral_sign;
    pub const Z3_fpa_get_numeral_significand_string = __root.Z3_fpa_get_numeral_significand_string;
    pub const Z3_fpa_get_numeral_significand_uint64 = __root.Z3_fpa_get_numeral_significand_uint64;
    pub const Z3_fpa_get_numeral_exponent_string = __root.Z3_fpa_get_numeral_exponent_string;
    pub const Z3_fpa_get_numeral_exponent_int64 = __root.Z3_fpa_get_numeral_exponent_int64;
    pub const Z3_fpa_get_numeral_exponent_bv = __root.Z3_fpa_get_numeral_exponent_bv;
    pub const Z3_mk_fpa_to_ieee_bv = __root.Z3_mk_fpa_to_ieee_bv;
    pub const Z3_mk_fpa_to_fp_int_real = __root.Z3_mk_fpa_to_fp_int_real;
    pub const Z3_fixedpoint_query_from_lvl = __root.Z3_fixedpoint_query_from_lvl;
    pub const Z3_fixedpoint_get_ground_sat_answer = __root.Z3_fixedpoint_get_ground_sat_answer;
    pub const Z3_fixedpoint_get_rules_along_trace = __root.Z3_fixedpoint_get_rules_along_trace;
    pub const Z3_fixedpoint_get_rule_names_along_trace = __root.Z3_fixedpoint_get_rule_names_along_trace;
    pub const Z3_fixedpoint_add_invariant = __root.Z3_fixedpoint_add_invariant;
    pub const Z3_fixedpoint_get_reachable = __root.Z3_fixedpoint_get_reachable;
    pub const Z3_qe_model_project = __root.Z3_qe_model_project;
    pub const Z3_qe_model_project_skolem = __root.Z3_qe_model_project_skolem;
    pub const Z3_qe_model_project_with_witness = __root.Z3_qe_model_project_with_witness;
    pub const Z3_model_extrapolate = __root.Z3_model_extrapolate;
    pub const Z3_qe_lite = __root.Z3_qe_lite;
    pub const context = __root.Z3_del_context;
    pub const ref = __root.Z3_inc_ref;
    pub const value = __root.Z3_update_param_value;
    pub const descrs = __root.Z3_get_global_param_descrs;
    pub const interrupt = __root.Z3_interrupt;
    pub const params = __root.Z3_mk_params;
    pub const @"bool" = __root.Z3_params_set_bool;
    pub const uint = __root.Z3_params_set_uint;
    pub const double = __root.Z3_params_set_double;
    pub const symbol = __root.Z3_params_set_symbol;
    pub const string = __root.Z3_params_to_string;
    pub const validate = __root.Z3_params_validate;
    pub const kind = __root.Z3_param_descrs_get_kind;
    pub const size = __root.Z3_param_descrs_size;
    pub const name = __root.Z3_param_descrs_get_name;
    pub const documentation = __root.Z3_param_descrs_get_documentation;
    pub const sort = __root.Z3_mk_uninterpreted_sort;
    pub const variable = __root.Z3_mk_type_variable;
    pub const n = __root.Z3_mk_array_sort_n;
    pub const constructor = __root.Z3_mk_constructor;
    pub const fields = __root.Z3_constructor_num_fields;
    pub const datatype = __root.Z3_mk_datatype;
    pub const list = __root.Z3_mk_constructor_list;
    pub const datatypes = __root.Z3_mk_datatypes;
    pub const decl = __root.Z3_mk_func_decl;
    pub const app = __root.Z3_mk_app;
    pub const @"const" = __root.Z3_mk_const;
    pub const def = __root.Z3_add_rec_def;
    pub const @"true" = __root.Z3_mk_true;
    pub const @"false" = __root.Z3_mk_false;
    pub const eq = __root.Z3_mk_eq;
    pub const distinct = __root.Z3_mk_distinct;
    pub const not = __root.Z3_mk_not;
    pub const ite = __root.Z3_mk_ite;
    pub const iff = __root.Z3_mk_iff;
    pub const implies = __root.Z3_mk_implies;
    pub const xor = __root.Z3_mk_xor;
    pub const @"and" = __root.Z3_mk_and;
    pub const @"or" = __root.Z3_mk_or;
    pub const add = __root.Z3_mk_add;
    pub const mul = __root.Z3_mk_mul;
    pub const sub = __root.Z3_mk_sub;
    pub const minus = __root.Z3_mk_unary_minus;
    pub const div = __root.Z3_mk_div;
    pub const mod = __root.Z3_mk_mod;
    pub const rem = __root.Z3_mk_rem;
    pub const power = __root.Z3_mk_power;
    pub const abs = __root.Z3_mk_abs;
    pub const lt = __root.Z3_mk_lt;
    pub const le = __root.Z3_mk_le;
    pub const gt = __root.Z3_mk_gt;
    pub const ge = __root.Z3_mk_ge;
    pub const divides = __root.Z3_mk_divides;
    pub const int2real = __root.Z3_mk_int2real;
    pub const real2int = __root.Z3_mk_real2int;
    pub const int = __root.Z3_mk_is_int;
    pub const bvnot = __root.Z3_mk_bvnot;
    pub const bvredand = __root.Z3_mk_bvredand;
    pub const bvredor = __root.Z3_mk_bvredor;
    pub const bvand = __root.Z3_mk_bvand;
    pub const bvor = __root.Z3_mk_bvor;
    pub const bvxor = __root.Z3_mk_bvxor;
    pub const bvnand = __root.Z3_mk_bvnand;
    pub const bvnor = __root.Z3_mk_bvnor;
    pub const bvxnor = __root.Z3_mk_bvxnor;
    pub const bvneg = __root.Z3_mk_bvneg;
    pub const bvadd = __root.Z3_mk_bvadd;
    pub const bvsub = __root.Z3_mk_bvsub;
    pub const bvmul = __root.Z3_mk_bvmul;
    pub const bvudiv = __root.Z3_mk_bvudiv;
    pub const bvsdiv = __root.Z3_mk_bvsdiv;
    pub const bvurem = __root.Z3_mk_bvurem;
    pub const bvsrem = __root.Z3_mk_bvsrem;
    pub const bvsmod = __root.Z3_mk_bvsmod;
    pub const bvult = __root.Z3_mk_bvult;
    pub const bvslt = __root.Z3_mk_bvslt;
    pub const bvule = __root.Z3_mk_bvule;
    pub const bvsle = __root.Z3_mk_bvsle;
    pub const bvuge = __root.Z3_mk_bvuge;
    pub const bvsge = __root.Z3_mk_bvsge;
    pub const bvugt = __root.Z3_mk_bvugt;
    pub const bvsgt = __root.Z3_mk_bvsgt;
    pub const concat = __root.Z3_mk_concat;
    pub const extract = __root.Z3_mk_extract;
    pub const ext = __root.Z3_mk_sign_ext;
    pub const repeat = __root.Z3_mk_repeat;
    pub const bit2bool = __root.Z3_mk_bit2bool;
    pub const bvshl = __root.Z3_mk_bvshl;
    pub const bvlshr = __root.Z3_mk_bvlshr;
    pub const bvashr = __root.Z3_mk_bvashr;
    pub const left = __root.Z3_mk_rotate_left;
    pub const right = __root.Z3_mk_rotate_right;
    pub const int2bv = __root.Z3_mk_int2bv;
    pub const bv2int = __root.Z3_mk_bv2int;
    pub const overflow = __root.Z3_mk_bvadd_no_overflow;
    pub const underflow = __root.Z3_mk_bvadd_no_underflow;
    pub const select = __root.Z3_mk_select;
    pub const store = __root.Z3_mk_store;
    pub const array = __root.Z3_mk_const_array;
    pub const map = __root.Z3_mk_map;
    pub const default = __root.Z3_mk_array_default;
    pub const set = __root.Z3_mk_empty_set;
    pub const del = __root.Z3_mk_set_del;
    pub const @"union" = __root.Z3_mk_set_union;
    pub const intersect = __root.Z3_mk_set_intersect;
    pub const difference = __root.Z3_mk_set_difference;
    pub const complement = __root.Z3_mk_set_complement;
    pub const member = __root.Z3_mk_set_member;
    pub const subset = __root.Z3_mk_set_subset;
    pub const numeral = __root.Z3_mk_numeral;
    pub const real = __root.Z3_mk_real;
    pub const int64 = __root.Z3_mk_real_int64;
    pub const basis = __root.Z3_get_seq_sort_basis;
    pub const lstring = __root.Z3_mk_lstring;
    pub const u32string = __root.Z3_mk_u32string;
    pub const length = __root.Z3_get_string_length;
    pub const contents = __root.Z3_get_string_contents;
    pub const empty = __root.Z3_mk_seq_empty;
    pub const unit = __root.Z3_mk_seq_unit;
    pub const prefix = __root.Z3_mk_seq_prefix;
    pub const suffix = __root.Z3_mk_seq_suffix;
    pub const contains = __root.Z3_mk_seq_contains;
    pub const replace = __root.Z3_mk_seq_replace;
    pub const at = __root.Z3_mk_seq_at;
    pub const nth = __root.Z3_mk_seq_nth;
    pub const index = __root.Z3_mk_seq_index;
    pub const mapi = __root.Z3_mk_seq_mapi;
    pub const foldl = __root.Z3_mk_seq_foldl;
    pub const foldli = __root.Z3_mk_seq_foldli;
    pub const str = __root.Z3_mk_int_to_str;
    pub const code = __root.Z3_mk_string_to_code;
    pub const re = __root.Z3_mk_seq_to_re;
    pub const plus = __root.Z3_mk_re_plus;
    pub const star = __root.Z3_mk_re_star;
    pub const option = __root.Z3_mk_re_option;
    pub const range = __root.Z3_mk_re_range;
    pub const allchar = __root.Z3_mk_re_allchar;
    pub const loop = __root.Z3_mk_re_loop;
    pub const diff = __root.Z3_mk_re_diff;
    pub const full = __root.Z3_mk_re_full;
    pub const char = __root.Z3_mk_char;
    pub const bv = __root.Z3_mk_char_to_bv;
    pub const digit = __root.Z3_mk_char_is_digit;
    pub const order = __root.Z3_mk_linear_order;
    pub const closure = __root.Z3_mk_transitive_closure;
    pub const pattern = __root.Z3_mk_pattern;
    pub const bound = __root.Z3_mk_bound;
    pub const forall = __root.Z3_mk_forall;
    pub const exists = __root.Z3_mk_exists;
    pub const quantifier = __root.Z3_mk_quantifier;
    pub const ex = __root.Z3_mk_quantifier_ex;
    pub const lambda = __root.Z3_mk_lambda;
    pub const id = __root.Z3_get_sort_id;
    pub const ast = __root.Z3_sort_to_ast;
    pub const arity = __root.Z3_get_array_arity;
    pub const domain = __root.Z3_get_array_sort_domain;
    pub const constructors = __root.Z3_get_datatype_sort_num_constructors;
    pub const recognizer = __root.Z3_get_datatype_sort_recognizer;
    pub const accessor = __root.Z3_get_datatype_sort_constructor_accessor;
    pub const field = __root.Z3_datatype_update_field;
    pub const column = __root.Z3_get_relation_column;
    pub const atmost = __root.Z3_mk_atmost;
    pub const atleast = __root.Z3_mk_atleast;
    pub const pble = __root.Z3_mk_pble;
    pub const pbge = __root.Z3_mk_pbge;
    pub const pbeq = __root.Z3_mk_pbeq;
    pub const parameters = __root.Z3_get_decl_num_parameters;
    pub const parameter = __root.Z3_get_decl_int_parameter;
    pub const args = __root.Z3_get_app_num_args;
    pub const arg = __root.Z3_get_app_arg;
    pub const hash = __root.Z3_get_ast_hash;
    pub const sorted = __root.Z3_is_well_sorted;
    pub const ground = __root.Z3_is_ground;
    pub const depth = __root.Z3_get_depth;
    pub const number = __root.Z3_is_algebraic_number;
    pub const numerator = __root.Z3_get_numerator;
    pub const denominator = __root.Z3_get_denominator;
    pub const small = __root.Z3_get_numeral_small;
    pub const uint64 = __root.Z3_get_numeral_uint64;
    pub const lower = __root.Z3_get_algebraic_number_lower;
    pub const upper = __root.Z3_get_algebraic_number_upper;
    pub const terms = __root.Z3_get_pattern_num_terms;
    pub const weight = __root.Z3_get_quantifier_weight;
    pub const patterns = __root.Z3_get_quantifier_num_patterns;
    pub const body = __root.Z3_get_quantifier_body;
    pub const simplify = __root.Z3_simplify;
    pub const help = __root.Z3_simplify_get_help;
    pub const term = __root.Z3_update_term;
    pub const substitute = __root.Z3_substitute;
    pub const vars = __root.Z3_substitute_vars;
    pub const funs = __root.Z3_substitute_funs;
    pub const translate = __root.Z3_translate;
    pub const model = __root.Z3_mk_model;
    pub const eval = __root.Z3_model_eval;
    pub const interp = __root.Z3_model_get_const_interp;
    pub const consts = __root.Z3_model_get_num_consts;
    pub const funcs = __root.Z3_model_get_num_funcs;
    pub const sorts = __root.Z3_model_get_num_sorts;
    pub const universe = __root.Z3_model_get_sort_universe;
    pub const entries = __root.Z3_func_interp_get_num_entries;
    pub const entry = __root.Z3_func_interp_get_entry;
    pub const @"else" = __root.Z3_func_interp_get_else;
    pub const mode = __root.Z3_set_ast_print_mode;
    pub const file = __root.Z3_parse_smtlib2_file;
    pub const handler = __root.Z3_set_error_handler;
    pub const @"error" = __root.Z3_set_error;
    pub const msg = __root.Z3_get_error_msg;
    pub const goal = __root.Z3_mk_goal;
    pub const precision = __root.Z3_goal_precision;
    pub const assert = __root.Z3_goal_assert;
    pub const inconsistent = __root.Z3_goal_inconsistent;
    pub const reset = __root.Z3_goal_reset;
    pub const formula = __root.Z3_goal_formula;
    pub const exprs = __root.Z3_goal_num_exprs;
    pub const sat = __root.Z3_goal_is_decided_sat;
    pub const unsat = __root.Z3_goal_is_decided_unsat;
    pub const tactic = __root.Z3_mk_tactic;
    pub const probe = __root.Z3_mk_probe;
    pub const then = __root.Z3_tactic_and_then;
    pub const @"for" = __root.Z3_tactic_try_for;
    pub const when = __root.Z3_tactic_when;
    pub const cond = __root.Z3_tactic_cond;
    pub const skip = __root.Z3_tactic_skip;
    pub const fail = __root.Z3_tactic_fail;
    pub const @"if" = __root.Z3_tactic_fail_if;
    pub const decided = __root.Z3_tactic_fail_if_not_decided;
    pub const simplifier = __root.Z3_mk_simplifier;
    pub const simplifiers = __root.Z3_get_num_simplifiers;
    pub const descr = __root.Z3_simplifier_get_descr;
    pub const tactics = __root.Z3_get_num_tactics;
    pub const probes = __root.Z3_get_num_probes;
    pub const apply = __root.Z3_probe_apply;
    pub const subgoals = __root.Z3_apply_result_get_num_subgoals;
    pub const subgoal = __root.Z3_apply_result_get_subgoal;
    pub const solver = __root.Z3_mk_solver;
    pub const logic = __root.Z3_mk_solver_for_logic;
    pub const converter = __root.Z3_solver_import_model_converter;
    pub const push = __root.Z3_solver_push;
    pub const pop = __root.Z3_solver_pop;
    pub const scopes = __root.Z3_solver_get_num_scopes;
    pub const track = __root.Z3_solver_assert_and_track;
    pub const assertions = __root.Z3_solver_get_assertions;
    pub const units = __root.Z3_solver_get_units;
    pub const trail = __root.Z3_solver_get_trail;
    pub const levels = __root.Z3_solver_get_levels;
    pub const root = __root.Z3_solver_congruence_root;
    pub const next = __root.Z3_solver_congruence_next;
    pub const explain = __root.Z3_solver_congruence_explain;
    pub const clause = __root.Z3_solver_register_on_clause;
    pub const init = __root.Z3_solver_propagate_init;
    pub const fixed = __root.Z3_solver_propagate_fixed;
    pub const final = __root.Z3_solver_propagate_final;
    pub const diseq = __root.Z3_solver_propagate_diseq;
    pub const created = __root.Z3_solver_propagate_created;
    pub const decide = __root.Z3_solver_propagate_decide;
    pub const binding = __root.Z3_solver_propagate_on_binding;
    pub const split = __root.Z3_solver_next_split;
    pub const declare = __root.Z3_solver_propagate_declare;
    pub const register = __root.Z3_solver_propagate_register;
    pub const cb = __root.Z3_solver_propagate_register_cb;
    pub const consequence = __root.Z3_solver_propagate_consequence;
    pub const check = __root.Z3_solver_check;
    pub const assumptions = __root.Z3_solver_check_assumptions;
    pub const equalities = __root.Z3_get_implied_equalities;
    pub const consequences = __root.Z3_solver_get_consequences;
    pub const cube = __root.Z3_solver_cube;
    pub const proof = __root.Z3_solver_get_proof;
    pub const core = __root.Z3_solver_get_unsat_core;
    pub const unknown = __root.Z3_solver_get_reason_unknown;
    pub const statistics = __root.Z3_solver_get_statistics;
    pub const key = __root.Z3_stats_get_key;
    pub const vector = __root.Z3_mk_ast_vector;
    pub const get = __root.Z3_ast_vector_get;
    pub const resize = __root.Z3_ast_vector_resize;
    pub const find = __root.Z3_ast_map_find;
    pub const insert = __root.Z3_ast_map_insert;
    pub const erase = __root.Z3_ast_map_erase;
    pub const keys = __root.Z3_ast_map_keys;
    pub const pos = __root.Z3_algebraic_is_pos;
    pub const neg = __root.Z3_algebraic_is_neg;
    pub const zero = __root.Z3_algebraic_is_zero;
    pub const sign = __root.Z3_algebraic_sign;
    pub const neq = __root.Z3_algebraic_neq;
    pub const roots = __root.Z3_algebraic_roots;
    pub const poly = __root.Z3_algebraic_get_poly;
    pub const i = __root.Z3_algebraic_get_i;
    pub const subresultants = __root.Z3_polynomial_subresultants;
    pub const rational = __root.Z3_rcf_mk_rational;
    pub const pi = __root.Z3_rcf_mk_pi;
    pub const e = __root.Z3_rcf_mk_e;
    pub const infinitesimal = __root.Z3_rcf_mk_infinitesimal;
    pub const inv = __root.Z3_rcf_inv;
    pub const algebraic = __root.Z3_rcf_is_algebraic;
    pub const transcendental = __root.Z3_rcf_is_transcendental;
    pub const coefficients = __root.Z3_rcf_num_coefficients;
    pub const coefficient = __root.Z3_rcf_coefficient;
    pub const interval = __root.Z3_rcf_interval;
    pub const conditions = __root.Z3_rcf_num_sign_conditions;
    pub const fixedpoint = __root.Z3_mk_fixedpoint;
    pub const rule = __root.Z3_fixedpoint_add_rule;
    pub const fact = __root.Z3_fixedpoint_add_fact;
    pub const query = __root.Z3_fixedpoint_query;
    pub const relations = __root.Z3_fixedpoint_query_relations;
    pub const answer = __root.Z3_fixedpoint_get_answer;
    pub const delta = __root.Z3_fixedpoint_get_cover_delta;
    pub const cover = __root.Z3_fixedpoint_add_cover;
    pub const relation = __root.Z3_fixedpoint_register_relation;
    pub const representation = __root.Z3_fixedpoint_set_predicate_representation;
    pub const rules = __root.Z3_fixedpoint_get_rules;
    pub const callback = __root.Z3_fixedpoint_set_reduce_assign_callback;
    pub const constraint = __root.Z3_fixedpoint_add_constraint;
    pub const optimize = __root.Z3_mk_optimize;
    pub const soft = __root.Z3_optimize_assert_soft;
    pub const maximize = __root.Z3_optimize_maximize;
    pub const minimize = __root.Z3_optimize_minimize;
    pub const objectives = __root.Z3_optimize_get_objectives;
    pub const eh = __root.Z3_optimize_register_model_eh;
    pub const even = __root.Z3_mk_fpa_round_nearest_ties_to_even;
    pub const rne = __root.Z3_mk_fpa_rne;
    pub const away = __root.Z3_mk_fpa_round_nearest_ties_to_away;
    pub const rna = __root.Z3_mk_fpa_rna;
    pub const positive = __root.Z3_mk_fpa_round_toward_positive;
    pub const rtp = __root.Z3_mk_fpa_rtp;
    pub const negative = __root.Z3_mk_fpa_round_toward_negative;
    pub const rtn = __root.Z3_mk_fpa_rtn;
    pub const rtz = __root.Z3_mk_fpa_rtz;
    pub const half = __root.Z3_mk_fpa_sort_half;
    pub const @"16" = __root.Z3_mk_fpa_sort_16;
    pub const single = __root.Z3_mk_fpa_sort_single;
    pub const @"32" = __root.Z3_mk_fpa_sort_32;
    pub const @"64" = __root.Z3_mk_fpa_sort_64;
    pub const quadruple = __root.Z3_mk_fpa_sort_quadruple;
    pub const @"128" = __root.Z3_mk_fpa_sort_128;
    pub const nan = __root.Z3_mk_fpa_nan;
    pub const inf = __root.Z3_mk_fpa_inf;
    pub const fp = __root.Z3_mk_fpa_fp;
    pub const float = __root.Z3_mk_fpa_numeral_float;
    pub const fma = __root.Z3_mk_fpa_fma;
    pub const sqrt = __root.Z3_mk_fpa_sqrt;
    pub const integral = __root.Z3_mk_fpa_round_to_integral;
    pub const min = __root.Z3_mk_fpa_min;
    pub const max = __root.Z3_mk_fpa_max;
    pub const leq = __root.Z3_mk_fpa_leq;
    pub const geq = __root.Z3_mk_fpa_geq;
    pub const normal = __root.Z3_mk_fpa_is_normal;
    pub const subnormal = __root.Z3_mk_fpa_is_subnormal;
    pub const infinite = __root.Z3_mk_fpa_is_infinite;
    pub const signed = __root.Z3_mk_fpa_to_fp_signed;
    pub const unsigned = __root.Z3_mk_fpa_to_fp_unsigned;
    pub const ubv = __root.Z3_mk_fpa_to_ubv;
    pub const sbv = __root.Z3_mk_fpa_to_sbv;
    pub const ebits = __root.Z3_fpa_get_ebits;
    pub const sbits = __root.Z3_fpa_get_sbits;
    pub const lvl = __root.Z3_fixedpoint_query_from_lvl;
    pub const trace = __root.Z3_fixedpoint_get_rules_along_trace;
    pub const invariant = __root.Z3_fixedpoint_add_invariant;
    pub const reachable = __root.Z3_fixedpoint_get_reachable;
    pub const project = __root.Z3_qe_model_project;
    pub const skolem = __root.Z3_qe_model_project_skolem;
    pub const witness = __root.Z3_qe_model_project_with_witness;
    pub const extrapolate = __root.Z3_model_extrapolate;
    pub const lite = __root.Z3_qe_lite;
};
pub const Z3_context = ?*struct__Z3_context;
pub const struct__Z3_sort = opaque {};
pub const Z3_sort = ?*struct__Z3_sort;
pub const struct__Z3_func_decl = opaque {};
pub const Z3_func_decl = ?*struct__Z3_func_decl;
pub const struct__Z3_ast = opaque {};
pub const Z3_ast = ?*struct__Z3_ast;
pub const struct__Z3_app = opaque {};
pub const Z3_app = ?*struct__Z3_app;
pub const struct__Z3_pattern = opaque {};
pub const Z3_pattern = ?*struct__Z3_pattern;
pub const struct__Z3_model = opaque {};
pub const Z3_model = ?*struct__Z3_model;
pub const struct__Z3_constructor = opaque {};
pub const Z3_constructor = ?*struct__Z3_constructor;
pub const struct__Z3_constructor_list = opaque {};
pub const Z3_constructor_list = ?*struct__Z3_constructor_list;
pub const struct__Z3_params = opaque {};
pub const Z3_params = ?*struct__Z3_params;
pub const struct__Z3_param_descrs = opaque {};
pub const Z3_param_descrs = ?*struct__Z3_param_descrs;
pub const struct__Z3_parser_context = opaque {};
pub const Z3_parser_context = ?*struct__Z3_parser_context;
pub const struct__Z3_goal = opaque {};
pub const Z3_goal = ?*struct__Z3_goal;
pub const struct__Z3_tactic = opaque {};
pub const Z3_tactic = ?*struct__Z3_tactic;
pub const struct__Z3_simplifier = opaque {};
pub const Z3_simplifier = ?*struct__Z3_simplifier;
pub const struct__Z3_probe = opaque {};
pub const Z3_probe = ?*struct__Z3_probe;
pub const struct__Z3_stats = opaque {};
pub const Z3_stats = ?*struct__Z3_stats;
pub const struct__Z3_solver = opaque {};
pub const Z3_solver = ?*struct__Z3_solver;
pub const struct__Z3_solver_callback = opaque {};
pub const Z3_solver_callback = ?*struct__Z3_solver_callback;
pub const struct__Z3_ast_vector = opaque {};
pub const Z3_ast_vector = ?*struct__Z3_ast_vector;
pub const struct__Z3_ast_map = opaque {};
pub const Z3_ast_map = ?*struct__Z3_ast_map;
pub const struct__Z3_apply_result = opaque {};
pub const Z3_apply_result = ?*struct__Z3_apply_result;
pub const struct__Z3_func_interp = opaque {};
pub const Z3_func_interp = ?*struct__Z3_func_interp;
pub const struct__Z3_func_entry = opaque {};
pub const Z3_func_entry = ?*struct__Z3_func_entry;
pub const struct__Z3_fixedpoint = opaque {};
pub const Z3_fixedpoint = ?*struct__Z3_fixedpoint;
pub const struct__Z3_optimize = opaque {};
pub const Z3_optimize = ?*struct__Z3_optimize;
pub const struct__Z3_rcf_num = opaque {};
pub const Z3_rcf_num = ?*struct__Z3_rcf_num;
pub const Z3_string = [*c]const u8;
pub const Z3_char_ptr = [*c]const u8;
pub const Z3_string_ptr = [*c]Z3_string;
pub const Z3_L_FALSE: c_int = -1;
pub const Z3_L_UNDEF: c_int = 0;
pub const Z3_L_TRUE: c_int = 1;
pub const Z3_lbool = c_int;
pub const Z3_INT_SYMBOL: c_int = 0;
pub const Z3_STRING_SYMBOL: c_int = 1;
pub const Z3_symbol_kind = c_uint;
pub const Z3_PARAMETER_INT: c_int = 0;
pub const Z3_PARAMETER_DOUBLE: c_int = 1;
pub const Z3_PARAMETER_RATIONAL: c_int = 2;
pub const Z3_PARAMETER_SYMBOL: c_int = 3;
pub const Z3_PARAMETER_SORT: c_int = 4;
pub const Z3_PARAMETER_AST: c_int = 5;
pub const Z3_PARAMETER_FUNC_DECL: c_int = 6;
pub const Z3_PARAMETER_INTERNAL: c_int = 7;
pub const Z3_PARAMETER_ZSTRING: c_int = 8;
pub const Z3_parameter_kind = c_uint;
pub const Z3_UNINTERPRETED_SORT: c_int = 0;
pub const Z3_BOOL_SORT: c_int = 1;
pub const Z3_INT_SORT: c_int = 2;
pub const Z3_REAL_SORT: c_int = 3;
pub const Z3_BV_SORT: c_int = 4;
pub const Z3_ARRAY_SORT: c_int = 5;
pub const Z3_DATATYPE_SORT: c_int = 6;
pub const Z3_RELATION_SORT: c_int = 7;
pub const Z3_FINITE_DOMAIN_SORT: c_int = 8;
pub const Z3_FLOATING_POINT_SORT: c_int = 9;
pub const Z3_ROUNDING_MODE_SORT: c_int = 10;
pub const Z3_SEQ_SORT: c_int = 11;
pub const Z3_RE_SORT: c_int = 12;
pub const Z3_CHAR_SORT: c_int = 13;
pub const Z3_TYPE_VAR: c_int = 14;
pub const Z3_UNKNOWN_SORT: c_int = 1000;
pub const Z3_sort_kind = c_uint;
pub const Z3_NUMERAL_AST: c_int = 0;
pub const Z3_APP_AST: c_int = 1;
pub const Z3_VAR_AST: c_int = 2;
pub const Z3_QUANTIFIER_AST: c_int = 3;
pub const Z3_SORT_AST: c_int = 4;
pub const Z3_FUNC_DECL_AST: c_int = 5;
pub const Z3_UNKNOWN_AST: c_int = 1000;
pub const Z3_ast_kind = c_uint;
pub const Z3_OP_TRUE: c_int = 256;
pub const Z3_OP_FALSE: c_int = 257;
pub const Z3_OP_EQ: c_int = 258;
pub const Z3_OP_DISTINCT: c_int = 259;
pub const Z3_OP_ITE: c_int = 260;
pub const Z3_OP_AND: c_int = 261;
pub const Z3_OP_OR: c_int = 262;
pub const Z3_OP_IFF: c_int = 263;
pub const Z3_OP_XOR: c_int = 264;
pub const Z3_OP_NOT: c_int = 265;
pub const Z3_OP_IMPLIES: c_int = 266;
pub const Z3_OP_OEQ: c_int = 267;
pub const Z3_OP_ANUM: c_int = 512;
pub const Z3_OP_AGNUM: c_int = 513;
pub const Z3_OP_LE: c_int = 514;
pub const Z3_OP_GE: c_int = 515;
pub const Z3_OP_LT: c_int = 516;
pub const Z3_OP_GT: c_int = 517;
pub const Z3_OP_ADD: c_int = 518;
pub const Z3_OP_SUB: c_int = 519;
pub const Z3_OP_UMINUS: c_int = 520;
pub const Z3_OP_MUL: c_int = 521;
pub const Z3_OP_DIV: c_int = 522;
pub const Z3_OP_IDIV: c_int = 523;
pub const Z3_OP_REM: c_int = 524;
pub const Z3_OP_MOD: c_int = 525;
pub const Z3_OP_TO_REAL: c_int = 526;
pub const Z3_OP_TO_INT: c_int = 527;
pub const Z3_OP_IS_INT: c_int = 528;
pub const Z3_OP_POWER: c_int = 529;
pub const Z3_OP_ABS: c_int = 530;
pub const Z3_OP_STORE: c_int = 768;
pub const Z3_OP_SELECT: c_int = 769;
pub const Z3_OP_CONST_ARRAY: c_int = 770;
pub const Z3_OP_ARRAY_MAP: c_int = 771;
pub const Z3_OP_ARRAY_DEFAULT: c_int = 772;
pub const Z3_OP_SET_UNION: c_int = 773;
pub const Z3_OP_SET_INTERSECT: c_int = 774;
pub const Z3_OP_SET_DIFFERENCE: c_int = 775;
pub const Z3_OP_SET_COMPLEMENT: c_int = 776;
pub const Z3_OP_SET_SUBSET: c_int = 777;
pub const Z3_OP_AS_ARRAY: c_int = 778;
pub const Z3_OP_ARRAY_EXT: c_int = 779;
pub const Z3_OP_SET_HAS_SIZE: c_int = 780;
pub const Z3_OP_SET_CARD: c_int = 781;
pub const Z3_OP_BNUM: c_int = 1024;
pub const Z3_OP_BIT1: c_int = 1025;
pub const Z3_OP_BIT0: c_int = 1026;
pub const Z3_OP_BNEG: c_int = 1027;
pub const Z3_OP_BADD: c_int = 1028;
pub const Z3_OP_BSUB: c_int = 1029;
pub const Z3_OP_BMUL: c_int = 1030;
pub const Z3_OP_BSDIV: c_int = 1031;
pub const Z3_OP_BUDIV: c_int = 1032;
pub const Z3_OP_BSREM: c_int = 1033;
pub const Z3_OP_BUREM: c_int = 1034;
pub const Z3_OP_BSMOD: c_int = 1035;
pub const Z3_OP_BSDIV0: c_int = 1036;
pub const Z3_OP_BUDIV0: c_int = 1037;
pub const Z3_OP_BSREM0: c_int = 1038;
pub const Z3_OP_BUREM0: c_int = 1039;
pub const Z3_OP_BSMOD0: c_int = 1040;
pub const Z3_OP_ULEQ: c_int = 1041;
pub const Z3_OP_SLEQ: c_int = 1042;
pub const Z3_OP_UGEQ: c_int = 1043;
pub const Z3_OP_SGEQ: c_int = 1044;
pub const Z3_OP_ULT: c_int = 1045;
pub const Z3_OP_SLT: c_int = 1046;
pub const Z3_OP_UGT: c_int = 1047;
pub const Z3_OP_SGT: c_int = 1048;
pub const Z3_OP_BAND: c_int = 1049;
pub const Z3_OP_BOR: c_int = 1050;
pub const Z3_OP_BNOT: c_int = 1051;
pub const Z3_OP_BXOR: c_int = 1052;
pub const Z3_OP_BNAND: c_int = 1053;
pub const Z3_OP_BNOR: c_int = 1054;
pub const Z3_OP_BXNOR: c_int = 1055;
pub const Z3_OP_CONCAT: c_int = 1056;
pub const Z3_OP_SIGN_EXT: c_int = 1057;
pub const Z3_OP_ZERO_EXT: c_int = 1058;
pub const Z3_OP_EXTRACT: c_int = 1059;
pub const Z3_OP_REPEAT: c_int = 1060;
pub const Z3_OP_BREDOR: c_int = 1061;
pub const Z3_OP_BREDAND: c_int = 1062;
pub const Z3_OP_BCOMP: c_int = 1063;
pub const Z3_OP_BSHL: c_int = 1064;
pub const Z3_OP_BLSHR: c_int = 1065;
pub const Z3_OP_BASHR: c_int = 1066;
pub const Z3_OP_ROTATE_LEFT: c_int = 1067;
pub const Z3_OP_ROTATE_RIGHT: c_int = 1068;
pub const Z3_OP_EXT_ROTATE_LEFT: c_int = 1069;
pub const Z3_OP_EXT_ROTATE_RIGHT: c_int = 1070;
pub const Z3_OP_BIT2BOOL: c_int = 1071;
pub const Z3_OP_INT2BV: c_int = 1072;
pub const Z3_OP_BV2INT: c_int = 1073;
pub const Z3_OP_SBV2INT: c_int = 1074;
pub const Z3_OP_CARRY: c_int = 1075;
pub const Z3_OP_XOR3: c_int = 1076;
pub const Z3_OP_BSMUL_NO_OVFL: c_int = 1077;
pub const Z3_OP_BUMUL_NO_OVFL: c_int = 1078;
pub const Z3_OP_BSMUL_NO_UDFL: c_int = 1079;
pub const Z3_OP_BSDIV_I: c_int = 1080;
pub const Z3_OP_BUDIV_I: c_int = 1081;
pub const Z3_OP_BSREM_I: c_int = 1082;
pub const Z3_OP_BUREM_I: c_int = 1083;
pub const Z3_OP_BSMOD_I: c_int = 1084;
pub const Z3_OP_PR_UNDEF: c_int = 1280;
pub const Z3_OP_PR_TRUE: c_int = 1281;
pub const Z3_OP_PR_ASSERTED: c_int = 1282;
pub const Z3_OP_PR_GOAL: c_int = 1283;
pub const Z3_OP_PR_MODUS_PONENS: c_int = 1284;
pub const Z3_OP_PR_REFLEXIVITY: c_int = 1285;
pub const Z3_OP_PR_SYMMETRY: c_int = 1286;
pub const Z3_OP_PR_TRANSITIVITY: c_int = 1287;
pub const Z3_OP_PR_TRANSITIVITY_STAR: c_int = 1288;
pub const Z3_OP_PR_MONOTONICITY: c_int = 1289;
pub const Z3_OP_PR_QUANT_INTRO: c_int = 1290;
pub const Z3_OP_PR_BIND: c_int = 1291;
pub const Z3_OP_PR_DISTRIBUTIVITY: c_int = 1292;
pub const Z3_OP_PR_AND_ELIM: c_int = 1293;
pub const Z3_OP_PR_NOT_OR_ELIM: c_int = 1294;
pub const Z3_OP_PR_REWRITE: c_int = 1295;
pub const Z3_OP_PR_REWRITE_STAR: c_int = 1296;
pub const Z3_OP_PR_PULL_QUANT: c_int = 1297;
pub const Z3_OP_PR_PUSH_QUANT: c_int = 1298;
pub const Z3_OP_PR_ELIM_UNUSED_VARS: c_int = 1299;
pub const Z3_OP_PR_DER: c_int = 1300;
pub const Z3_OP_PR_QUANT_INST: c_int = 1301;
pub const Z3_OP_PR_HYPOTHESIS: c_int = 1302;
pub const Z3_OP_PR_LEMMA: c_int = 1303;
pub const Z3_OP_PR_UNIT_RESOLUTION: c_int = 1304;
pub const Z3_OP_PR_IFF_TRUE: c_int = 1305;
pub const Z3_OP_PR_IFF_FALSE: c_int = 1306;
pub const Z3_OP_PR_COMMUTATIVITY: c_int = 1307;
pub const Z3_OP_PR_DEF_AXIOM: c_int = 1308;
pub const Z3_OP_PR_ASSUMPTION_ADD: c_int = 1309;
pub const Z3_OP_PR_LEMMA_ADD: c_int = 1310;
pub const Z3_OP_PR_REDUNDANT_DEL: c_int = 1311;
pub const Z3_OP_PR_CLAUSE_TRAIL: c_int = 1312;
pub const Z3_OP_PR_DEF_INTRO: c_int = 1313;
pub const Z3_OP_PR_APPLY_DEF: c_int = 1314;
pub const Z3_OP_PR_IFF_OEQ: c_int = 1315;
pub const Z3_OP_PR_NNF_POS: c_int = 1316;
pub const Z3_OP_PR_NNF_NEG: c_int = 1317;
pub const Z3_OP_PR_SKOLEMIZE: c_int = 1318;
pub const Z3_OP_PR_MODUS_PONENS_OEQ: c_int = 1319;
pub const Z3_OP_PR_TH_LEMMA: c_int = 1320;
pub const Z3_OP_PR_HYPER_RESOLVE: c_int = 1321;
pub const Z3_OP_RA_STORE: c_int = 1536;
pub const Z3_OP_RA_EMPTY: c_int = 1537;
pub const Z3_OP_RA_IS_EMPTY: c_int = 1538;
pub const Z3_OP_RA_JOIN: c_int = 1539;
pub const Z3_OP_RA_UNION: c_int = 1540;
pub const Z3_OP_RA_WIDEN: c_int = 1541;
pub const Z3_OP_RA_PROJECT: c_int = 1542;
pub const Z3_OP_RA_FILTER: c_int = 1543;
pub const Z3_OP_RA_NEGATION_FILTER: c_int = 1544;
pub const Z3_OP_RA_RENAME: c_int = 1545;
pub const Z3_OP_RA_COMPLEMENT: c_int = 1546;
pub const Z3_OP_RA_SELECT: c_int = 1547;
pub const Z3_OP_RA_CLONE: c_int = 1548;
pub const Z3_OP_FD_CONSTANT: c_int = 1549;
pub const Z3_OP_FD_LT: c_int = 1550;
pub const Z3_OP_SEQ_UNIT: c_int = 1551;
pub const Z3_OP_SEQ_EMPTY: c_int = 1552;
pub const Z3_OP_SEQ_CONCAT: c_int = 1553;
pub const Z3_OP_SEQ_PREFIX: c_int = 1554;
pub const Z3_OP_SEQ_SUFFIX: c_int = 1555;
pub const Z3_OP_SEQ_CONTAINS: c_int = 1556;
pub const Z3_OP_SEQ_EXTRACT: c_int = 1557;
pub const Z3_OP_SEQ_REPLACE: c_int = 1558;
pub const Z3_OP_SEQ_REPLACE_RE: c_int = 1559;
pub const Z3_OP_SEQ_REPLACE_RE_ALL: c_int = 1560;
pub const Z3_OP_SEQ_REPLACE_ALL: c_int = 1561;
pub const Z3_OP_SEQ_AT: c_int = 1562;
pub const Z3_OP_SEQ_NTH: c_int = 1563;
pub const Z3_OP_SEQ_LENGTH: c_int = 1564;
pub const Z3_OP_SEQ_INDEX: c_int = 1565;
pub const Z3_OP_SEQ_LAST_INDEX: c_int = 1566;
pub const Z3_OP_SEQ_TO_RE: c_int = 1567;
pub const Z3_OP_SEQ_IN_RE: c_int = 1568;
pub const Z3_OP_SEQ_MAP: c_int = 1569;
pub const Z3_OP_SEQ_MAPI: c_int = 1570;
pub const Z3_OP_SEQ_FOLDL: c_int = 1571;
pub const Z3_OP_SEQ_FOLDLI: c_int = 1572;
pub const Z3_OP_STR_TO_INT: c_int = 1573;
pub const Z3_OP_INT_TO_STR: c_int = 1574;
pub const Z3_OP_UBV_TO_STR: c_int = 1575;
pub const Z3_OP_SBV_TO_STR: c_int = 1576;
pub const Z3_OP_STR_TO_CODE: c_int = 1577;
pub const Z3_OP_STR_FROM_CODE: c_int = 1578;
pub const Z3_OP_STRING_LT: c_int = 1579;
pub const Z3_OP_STRING_LE: c_int = 1580;
pub const Z3_OP_RE_PLUS: c_int = 1581;
pub const Z3_OP_RE_STAR: c_int = 1582;
pub const Z3_OP_RE_OPTION: c_int = 1583;
pub const Z3_OP_RE_CONCAT: c_int = 1584;
pub const Z3_OP_RE_UNION: c_int = 1585;
pub const Z3_OP_RE_RANGE: c_int = 1586;
pub const Z3_OP_RE_DIFF: c_int = 1587;
pub const Z3_OP_RE_INTERSECT: c_int = 1588;
pub const Z3_OP_RE_LOOP: c_int = 1589;
pub const Z3_OP_RE_POWER: c_int = 1590;
pub const Z3_OP_RE_COMPLEMENT: c_int = 1591;
pub const Z3_OP_RE_EMPTY_SET: c_int = 1592;
pub const Z3_OP_RE_FULL_SET: c_int = 1593;
pub const Z3_OP_RE_FULL_CHAR_SET: c_int = 1594;
pub const Z3_OP_RE_OF_PRED: c_int = 1595;
pub const Z3_OP_RE_REVERSE: c_int = 1596;
pub const Z3_OP_RE_DERIVATIVE: c_int = 1597;
pub const Z3_OP_CHAR_CONST: c_int = 1598;
pub const Z3_OP_CHAR_LE: c_int = 1599;
pub const Z3_OP_CHAR_TO_INT: c_int = 1600;
pub const Z3_OP_CHAR_TO_BV: c_int = 1601;
pub const Z3_OP_CHAR_FROM_BV: c_int = 1602;
pub const Z3_OP_CHAR_IS_DIGIT: c_int = 1603;
pub const Z3_OP_LABEL: c_int = 1792;
pub const Z3_OP_LABEL_LIT: c_int = 1793;
pub const Z3_OP_DT_CONSTRUCTOR: c_int = 2048;
pub const Z3_OP_DT_RECOGNISER: c_int = 2049;
pub const Z3_OP_DT_IS: c_int = 2050;
pub const Z3_OP_DT_ACCESSOR: c_int = 2051;
pub const Z3_OP_DT_UPDATE_FIELD: c_int = 2052;
pub const Z3_OP_PB_AT_MOST: c_int = 2304;
pub const Z3_OP_PB_AT_LEAST: c_int = 2305;
pub const Z3_OP_PB_LE: c_int = 2306;
pub const Z3_OP_PB_GE: c_int = 2307;
pub const Z3_OP_PB_EQ: c_int = 2308;
pub const Z3_OP_SPECIAL_RELATION_LO: c_int = 40960;
pub const Z3_OP_SPECIAL_RELATION_PO: c_int = 40961;
pub const Z3_OP_SPECIAL_RELATION_PLO: c_int = 40962;
pub const Z3_OP_SPECIAL_RELATION_TO: c_int = 40963;
pub const Z3_OP_SPECIAL_RELATION_TC: c_int = 40964;
pub const Z3_OP_SPECIAL_RELATION_TRC: c_int = 40965;
pub const Z3_OP_FPA_RM_NEAREST_TIES_TO_EVEN: c_int = 45056;
pub const Z3_OP_FPA_RM_NEAREST_TIES_TO_AWAY: c_int = 45057;
pub const Z3_OP_FPA_RM_TOWARD_POSITIVE: c_int = 45058;
pub const Z3_OP_FPA_RM_TOWARD_NEGATIVE: c_int = 45059;
pub const Z3_OP_FPA_RM_TOWARD_ZERO: c_int = 45060;
pub const Z3_OP_FPA_NUM: c_int = 45061;
pub const Z3_OP_FPA_PLUS_INF: c_int = 45062;
pub const Z3_OP_FPA_MINUS_INF: c_int = 45063;
pub const Z3_OP_FPA_NAN: c_int = 45064;
pub const Z3_OP_FPA_PLUS_ZERO: c_int = 45065;
pub const Z3_OP_FPA_MINUS_ZERO: c_int = 45066;
pub const Z3_OP_FPA_ADD: c_int = 45067;
pub const Z3_OP_FPA_SUB: c_int = 45068;
pub const Z3_OP_FPA_NEG: c_int = 45069;
pub const Z3_OP_FPA_MUL: c_int = 45070;
pub const Z3_OP_FPA_DIV: c_int = 45071;
pub const Z3_OP_FPA_REM: c_int = 45072;
pub const Z3_OP_FPA_ABS: c_int = 45073;
pub const Z3_OP_FPA_MIN: c_int = 45074;
pub const Z3_OP_FPA_MAX: c_int = 45075;
pub const Z3_OP_FPA_FMA: c_int = 45076;
pub const Z3_OP_FPA_SQRT: c_int = 45077;
pub const Z3_OP_FPA_ROUND_TO_INTEGRAL: c_int = 45078;
pub const Z3_OP_FPA_EQ: c_int = 45079;
pub const Z3_OP_FPA_LT: c_int = 45080;
pub const Z3_OP_FPA_GT: c_int = 45081;
pub const Z3_OP_FPA_LE: c_int = 45082;
pub const Z3_OP_FPA_GE: c_int = 45083;
pub const Z3_OP_FPA_IS_NAN: c_int = 45084;
pub const Z3_OP_FPA_IS_INF: c_int = 45085;
pub const Z3_OP_FPA_IS_ZERO: c_int = 45086;
pub const Z3_OP_FPA_IS_NORMAL: c_int = 45087;
pub const Z3_OP_FPA_IS_SUBNORMAL: c_int = 45088;
pub const Z3_OP_FPA_IS_NEGATIVE: c_int = 45089;
pub const Z3_OP_FPA_IS_POSITIVE: c_int = 45090;
pub const Z3_OP_FPA_FP: c_int = 45091;
pub const Z3_OP_FPA_TO_FP: c_int = 45092;
pub const Z3_OP_FPA_TO_FP_UNSIGNED: c_int = 45093;
pub const Z3_OP_FPA_TO_UBV: c_int = 45094;
pub const Z3_OP_FPA_TO_SBV: c_int = 45095;
pub const Z3_OP_FPA_TO_REAL: c_int = 45096;
pub const Z3_OP_FPA_TO_IEEE_BV: c_int = 45097;
pub const Z3_OP_FPA_BVWRAP: c_int = 45098;
pub const Z3_OP_FPA_BV2RM: c_int = 45099;
pub const Z3_OP_INTERNAL: c_int = 45100;
pub const Z3_OP_RECURSIVE: c_int = 45101;
pub const Z3_OP_UNINTERPRETED: c_int = 45102;
pub const Z3_decl_kind = c_uint;
pub const Z3_PK_UINT: c_int = 0;
pub const Z3_PK_BOOL: c_int = 1;
pub const Z3_PK_DOUBLE: c_int = 2;
pub const Z3_PK_SYMBOL: c_int = 3;
pub const Z3_PK_STRING: c_int = 4;
pub const Z3_PK_OTHER: c_int = 5;
pub const Z3_PK_INVALID: c_int = 6;
pub const Z3_param_kind = c_uint;
pub const Z3_PRINT_SMTLIB_FULL: c_int = 0;
pub const Z3_PRINT_LOW_LEVEL: c_int = 1;
pub const Z3_PRINT_SMTLIB2_COMPLIANT: c_int = 2;
pub const Z3_ast_print_mode = c_uint;
pub const Z3_OK: c_int = 0;
pub const Z3_SORT_ERROR: c_int = 1;
pub const Z3_IOB: c_int = 2;
pub const Z3_INVALID_ARG: c_int = 3;
pub const Z3_PARSER_ERROR: c_int = 4;
pub const Z3_NO_PARSER: c_int = 5;
pub const Z3_INVALID_PATTERN: c_int = 6;
pub const Z3_MEMOUT_FAIL: c_int = 7;
pub const Z3_FILE_ACCESS_ERROR: c_int = 8;
pub const Z3_INTERNAL_FATAL: c_int = 9;
pub const Z3_INVALID_USAGE: c_int = 10;
pub const Z3_DEC_REF_ERROR: c_int = 11;
pub const Z3_EXCEPTION: c_int = 12;
pub const Z3_error_code = c_uint;
pub const Z3_error_handler = fn (c: Z3_context, e: Z3_error_code) callconv(.c) void;
pub const Z3_push_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback) callconv(.c) void;
pub const Z3_pop_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, num_scopes: c_uint) callconv(.c) void;
pub const Z3_fresh_eh = fn (ctx: ?*anyopaque, new_context: Z3_context) callconv(.c) ?*anyopaque;
pub const Z3_fixed_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, t: Z3_ast, value: Z3_ast) callconv(.c) void;
pub const Z3_eq_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, s: Z3_ast, t: Z3_ast) callconv(.c) void;
pub const Z3_final_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback) callconv(.c) void;
pub const Z3_created_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, t: Z3_ast) callconv(.c) void;
pub const Z3_decide_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, t: Z3_ast, idx: c_uint, phase: bool) callconv(.c) void;
pub const Z3_on_binding_eh = fn (ctx: ?*anyopaque, cb: Z3_solver_callback, q: Z3_ast, inst: Z3_ast) callconv(.c) bool;
pub const Z3_on_clause_eh = fn (ctx: ?*anyopaque, proof_hint: Z3_ast, n: c_uint, deps: [*c]const c_uint, literals: Z3_ast_vector) callconv(.c) void;
pub const Z3_GOAL_PRECISE: c_int = 0;
pub const Z3_GOAL_UNDER: c_int = 1;
pub const Z3_GOAL_OVER: c_int = 2;
pub const Z3_GOAL_UNDER_OVER: c_int = 3;
pub const Z3_goal_prec = c_uint;
pub extern fn Z3_global_param_set(param_id: Z3_string, param_value: Z3_string) void;
pub extern fn Z3_global_param_reset_all() void;
pub extern fn Z3_global_param_get(param_id: Z3_string, param_value: Z3_string_ptr) bool;
pub extern fn Z3_mk_config() Z3_config;
pub extern fn Z3_del_config(c: Z3_config) void;
pub extern fn Z3_set_param_value(c: Z3_config, param_id: Z3_string, param_value: Z3_string) void;
pub extern fn Z3_mk_context(c: Z3_config) Z3_context;
pub extern fn Z3_mk_context_rc(c: Z3_config) Z3_context;
pub extern fn Z3_del_context(c: Z3_context) void;
pub extern fn Z3_inc_ref(c: Z3_context, a: Z3_ast) void;
pub extern fn Z3_dec_ref(c: Z3_context, a: Z3_ast) void;
pub extern fn Z3_update_param_value(c: Z3_context, param_id: Z3_string, param_value: Z3_string) void;
pub extern fn Z3_get_global_param_descrs(c: Z3_context) Z3_param_descrs;
pub extern fn Z3_interrupt(c: Z3_context) void;
pub extern fn Z3_enable_concurrent_dec_ref(c: Z3_context) void;
pub extern fn Z3_mk_params(c: Z3_context) Z3_params;
pub extern fn Z3_params_inc_ref(c: Z3_context, p: Z3_params) void;
pub extern fn Z3_params_dec_ref(c: Z3_context, p: Z3_params) void;
pub extern fn Z3_params_set_bool(c: Z3_context, p: Z3_params, k: Z3_symbol, v: bool) void;
pub extern fn Z3_params_set_uint(c: Z3_context, p: Z3_params, k: Z3_symbol, v: c_uint) void;
pub extern fn Z3_params_set_double(c: Z3_context, p: Z3_params, k: Z3_symbol, v: f64) void;
pub extern fn Z3_params_set_symbol(c: Z3_context, p: Z3_params, k: Z3_symbol, v: Z3_symbol) void;
pub extern fn Z3_params_to_string(c: Z3_context, p: Z3_params) Z3_string;
pub extern fn Z3_params_validate(c: Z3_context, p: Z3_params, d: Z3_param_descrs) void;
pub extern fn Z3_param_descrs_inc_ref(c: Z3_context, p: Z3_param_descrs) void;
pub extern fn Z3_param_descrs_dec_ref(c: Z3_context, p: Z3_param_descrs) void;
pub extern fn Z3_param_descrs_get_kind(c: Z3_context, p: Z3_param_descrs, n: Z3_symbol) Z3_param_kind;
pub extern fn Z3_param_descrs_size(c: Z3_context, p: Z3_param_descrs) c_uint;
pub extern fn Z3_param_descrs_get_name(c: Z3_context, p: Z3_param_descrs, i: c_uint) Z3_symbol;
pub extern fn Z3_param_descrs_get_documentation(c: Z3_context, p: Z3_param_descrs, s: Z3_symbol) Z3_string;
pub extern fn Z3_param_descrs_to_string(c: Z3_context, p: Z3_param_descrs) Z3_string;
pub extern fn Z3_mk_int_symbol(c: Z3_context, i: c_int) Z3_symbol;
pub extern fn Z3_mk_string_symbol(c: Z3_context, s: Z3_string) Z3_symbol;
pub extern fn Z3_mk_uninterpreted_sort(c: Z3_context, s: Z3_symbol) Z3_sort;
pub extern fn Z3_mk_type_variable(c: Z3_context, s: Z3_symbol) Z3_sort;
pub extern fn Z3_mk_bool_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_int_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_real_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_bv_sort(c: Z3_context, sz: c_uint) Z3_sort;
pub extern fn Z3_mk_finite_domain_sort(c: Z3_context, name: Z3_symbol, size: u64) Z3_sort;
pub extern fn Z3_mk_array_sort(c: Z3_context, domain: Z3_sort, range: Z3_sort) Z3_sort;
pub extern fn Z3_mk_array_sort_n(c: Z3_context, n: c_uint, domain: [*c]const Z3_sort, range: Z3_sort) Z3_sort;
pub extern fn Z3_mk_tuple_sort(c: Z3_context, mk_tuple_name: Z3_symbol, num_fields: c_uint, field_names: [*c]const Z3_symbol, field_sorts: [*c]const Z3_sort, mk_tuple_decl: [*c]Z3_func_decl, proj_decl: [*c]Z3_func_decl) Z3_sort;
pub extern fn Z3_mk_enumeration_sort(c: Z3_context, name: Z3_symbol, n: c_uint, enum_names: [*c]const Z3_symbol, enum_consts: [*c]Z3_func_decl, enum_testers: [*c]Z3_func_decl) Z3_sort;
pub extern fn Z3_mk_list_sort(c: Z3_context, name: Z3_symbol, elem_sort: Z3_sort, nil_decl: [*c]Z3_func_decl, is_nil_decl: [*c]Z3_func_decl, cons_decl: [*c]Z3_func_decl, is_cons_decl: [*c]Z3_func_decl, head_decl: [*c]Z3_func_decl, tail_decl: [*c]Z3_func_decl) Z3_sort;
pub extern fn Z3_mk_constructor(c: Z3_context, name: Z3_symbol, recognizer: Z3_symbol, num_fields: c_uint, field_names: [*c]const Z3_symbol, sorts: [*c]const Z3_sort, sort_refs: [*c]c_uint) Z3_constructor;
pub extern fn Z3_constructor_num_fields(c: Z3_context, constr: Z3_constructor) c_uint;
pub extern fn Z3_del_constructor(c: Z3_context, constr: Z3_constructor) void;
pub extern fn Z3_mk_datatype(c: Z3_context, name: Z3_symbol, num_constructors: c_uint, constructors: [*c]Z3_constructor) Z3_sort;
pub extern fn Z3_mk_polymorphic_datatype(c: Z3_context, name: Z3_symbol, num_parameters: c_uint, parameters: [*c]Z3_sort, num_constructors: c_uint, constructors: [*c]Z3_constructor) Z3_sort;
pub extern fn Z3_mk_datatype_sort(c: Z3_context, name: Z3_symbol, num_params: c_uint, params: [*c]const Z3_sort) Z3_sort;
pub extern fn Z3_mk_constructor_list(c: Z3_context, num_constructors: c_uint, constructors: [*c]const Z3_constructor) Z3_constructor_list;
pub extern fn Z3_del_constructor_list(c: Z3_context, clist: Z3_constructor_list) void;
pub extern fn Z3_mk_datatypes(c: Z3_context, num_sorts: c_uint, sort_names: [*c]const Z3_symbol, sorts: [*c]Z3_sort, constructor_lists: [*c]Z3_constructor_list) void;
pub extern fn Z3_query_constructor(c: Z3_context, constr: Z3_constructor, num_fields: c_uint, constructor: [*c]Z3_func_decl, tester: [*c]Z3_func_decl, accessors: [*c]Z3_func_decl) void;
pub extern fn Z3_mk_func_decl(c: Z3_context, s: Z3_symbol, domain_size: c_uint, domain: [*c]const Z3_sort, range: Z3_sort) Z3_func_decl;
pub extern fn Z3_mk_app(c: Z3_context, d: Z3_func_decl, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_const(c: Z3_context, s: Z3_symbol, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fresh_func_decl(c: Z3_context, prefix: Z3_string, domain_size: c_uint, domain: [*c]const Z3_sort, range: Z3_sort) Z3_func_decl;
pub extern fn Z3_mk_fresh_const(c: Z3_context, prefix: Z3_string, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_rec_func_decl(c: Z3_context, s: Z3_symbol, domain_size: c_uint, domain: [*c]const Z3_sort, range: Z3_sort) Z3_func_decl;
pub extern fn Z3_add_rec_def(c: Z3_context, f: Z3_func_decl, n: c_uint, args: [*c]Z3_ast, body: Z3_ast) void;
pub extern fn Z3_mk_true(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_false(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_eq(c: Z3_context, l: Z3_ast, r: Z3_ast) Z3_ast;
pub extern fn Z3_mk_distinct(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_not(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_mk_ite(c: Z3_context, t1: Z3_ast, t2: Z3_ast, t3: Z3_ast) Z3_ast;
pub extern fn Z3_mk_iff(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_implies(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_xor(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_and(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_or(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_add(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_mul(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_sub(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_unary_minus(c: Z3_context, arg: Z3_ast) Z3_ast;
pub extern fn Z3_mk_div(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_mod(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_rem(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_power(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_abs(c: Z3_context, arg: Z3_ast) Z3_ast;
pub extern fn Z3_mk_lt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_le(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_gt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_ge(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_divides(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_int2real(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_real2int(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_is_int(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvnot(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvredand(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvredor(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvand(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvor(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvxor(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvnand(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvnor(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvxnor(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvneg(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvadd(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsub(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvmul(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvudiv(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsdiv(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvurem(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsrem(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsmod(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvult(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvslt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvule(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsle(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvuge(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsge(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvugt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsgt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_concat(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_extract(c: Z3_context, high: c_uint, low: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_sign_ext(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_zero_ext(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_repeat(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bit2bool(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvshl(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvlshr(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvashr(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_rotate_left(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_rotate_right(c: Z3_context, i: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_ext_rotate_left(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_ext_rotate_right(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_int2bv(c: Z3_context, n: c_uint, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bv2int(c: Z3_context, t1: Z3_ast, is_signed: bool) Z3_ast;
pub extern fn Z3_mk_bvadd_no_overflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast, is_signed: bool) Z3_ast;
pub extern fn Z3_mk_bvadd_no_underflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsub_no_overflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvsub_no_underflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast, is_signed: bool) Z3_ast;
pub extern fn Z3_mk_bvsdiv_no_overflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvneg_no_overflow(c: Z3_context, t1: Z3_ast) Z3_ast;
pub extern fn Z3_mk_bvmul_no_overflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast, is_signed: bool) Z3_ast;
pub extern fn Z3_mk_bvmul_no_underflow(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_select(c: Z3_context, a: Z3_ast, i: Z3_ast) Z3_ast;
pub extern fn Z3_mk_select_n(c: Z3_context, a: Z3_ast, n: c_uint, idxs: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_store(c: Z3_context, a: Z3_ast, i: Z3_ast, v: Z3_ast) Z3_ast;
pub extern fn Z3_mk_store_n(c: Z3_context, a: Z3_ast, n: c_uint, idxs: [*c]const Z3_ast, v: Z3_ast) Z3_ast;
pub extern fn Z3_mk_const_array(c: Z3_context, domain: Z3_sort, v: Z3_ast) Z3_ast;
pub extern fn Z3_mk_map(c: Z3_context, f: Z3_func_decl, n: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_array_default(c: Z3_context, array: Z3_ast) Z3_ast;
pub extern fn Z3_mk_as_array(c: Z3_context, f: Z3_func_decl) Z3_ast;
pub extern fn Z3_mk_set_has_size(c: Z3_context, set: Z3_ast, k: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_sort(c: Z3_context, ty: Z3_sort) Z3_sort;
pub extern fn Z3_mk_empty_set(c: Z3_context, domain: Z3_sort) Z3_ast;
pub extern fn Z3_mk_full_set(c: Z3_context, domain: Z3_sort) Z3_ast;
pub extern fn Z3_mk_set_add(c: Z3_context, set: Z3_ast, elem: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_del(c: Z3_context, set: Z3_ast, elem: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_union(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_intersect(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_difference(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_complement(c: Z3_context, arg: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_member(c: Z3_context, elem: Z3_ast, set: Z3_ast) Z3_ast;
pub extern fn Z3_mk_set_subset(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_array_ext(c: Z3_context, arg1: Z3_ast, arg2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_numeral(c: Z3_context, numeral: Z3_string, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_real(c: Z3_context, num: c_int, den: c_int) Z3_ast;
pub extern fn Z3_mk_real_int64(c: Z3_context, num: i64, den: i64) Z3_ast;
pub extern fn Z3_mk_int(c: Z3_context, v: c_int, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_unsigned_int(c: Z3_context, v: c_uint, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_int64(c: Z3_context, v: i64, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_unsigned_int64(c: Z3_context, v: u64, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_bv_numeral(c: Z3_context, sz: c_uint, bits: [*c]const bool) Z3_ast;
pub extern fn Z3_mk_seq_sort(c: Z3_context, s: Z3_sort) Z3_sort;
pub extern fn Z3_is_seq_sort(c: Z3_context, s: Z3_sort) bool;
pub extern fn Z3_get_seq_sort_basis(c: Z3_context, s: Z3_sort) Z3_sort;
pub extern fn Z3_mk_re_sort(c: Z3_context, seq: Z3_sort) Z3_sort;
pub extern fn Z3_is_re_sort(c: Z3_context, s: Z3_sort) bool;
pub extern fn Z3_get_re_sort_basis(c: Z3_context, s: Z3_sort) Z3_sort;
pub extern fn Z3_mk_string_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_char_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_is_string_sort(c: Z3_context, s: Z3_sort) bool;
pub extern fn Z3_is_char_sort(c: Z3_context, s: Z3_sort) bool;
pub extern fn Z3_mk_string(c: Z3_context, s: Z3_string) Z3_ast;
pub extern fn Z3_mk_lstring(c: Z3_context, len: c_uint, s: Z3_string) Z3_ast;
pub extern fn Z3_mk_u32string(c: Z3_context, len: c_uint, chars: [*c]const c_uint) Z3_ast;
pub extern fn Z3_is_string(c: Z3_context, s: Z3_ast) bool;
pub extern fn Z3_get_string(c: Z3_context, s: Z3_ast) Z3_string;
pub extern fn Z3_get_lstring(c: Z3_context, s: Z3_ast, length: [*c]c_uint) Z3_char_ptr;
pub extern fn Z3_get_string_length(c: Z3_context, s: Z3_ast) c_uint;
pub extern fn Z3_get_string_contents(c: Z3_context, s: Z3_ast, length: c_uint, contents: [*c]c_uint) void;
pub extern fn Z3_mk_seq_empty(c: Z3_context, seq: Z3_sort) Z3_ast;
pub extern fn Z3_mk_seq_unit(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_concat(c: Z3_context, n: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_prefix(c: Z3_context, prefix: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_suffix(c: Z3_context, suffix: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_contains(c: Z3_context, container: Z3_ast, containee: Z3_ast) Z3_ast;
pub extern fn Z3_mk_str_lt(c: Z3_context, prefix: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_str_le(c: Z3_context, prefix: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_extract(c: Z3_context, s: Z3_ast, offset: Z3_ast, length: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_replace(c: Z3_context, s: Z3_ast, src: Z3_ast, dst: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_at(c: Z3_context, s: Z3_ast, index: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_nth(c: Z3_context, s: Z3_ast, index: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_length(c: Z3_context, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_index(c: Z3_context, s: Z3_ast, substr: Z3_ast, offset: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_last_index(c: Z3_context, s: Z3_ast, substr: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_map(c: Z3_context, f: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_mapi(c: Z3_context, f: Z3_ast, i: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_foldl(c: Z3_context, f: Z3_ast, a: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_foldli(c: Z3_context, f: Z3_ast, i: Z3_ast, a: Z3_ast, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_str_to_int(c: Z3_context, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_int_to_str(c: Z3_context, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_string_to_code(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_mk_string_from_code(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_mk_ubv_to_str(c: Z3_context, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_sbv_to_str(c: Z3_context, s: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_to_re(c: Z3_context, seq: Z3_ast) Z3_ast;
pub extern fn Z3_mk_seq_in_re(c: Z3_context, seq: Z3_ast, re: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_plus(c: Z3_context, re: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_star(c: Z3_context, re: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_option(c: Z3_context, re: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_union(c: Z3_context, n: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_concat(c: Z3_context, n: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_range(c: Z3_context, lo: Z3_ast, hi: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_allchar(c: Z3_context, regex_sort: Z3_sort) Z3_ast;
pub extern fn Z3_mk_re_loop(c: Z3_context, r: Z3_ast, lo: c_uint, hi: c_uint) Z3_ast;
pub extern fn Z3_mk_re_power(c: Z3_context, re: Z3_ast, n: c_uint) Z3_ast;
pub extern fn Z3_mk_re_intersect(c: Z3_context, n: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_complement(c: Z3_context, re: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_diff(c: Z3_context, re1: Z3_ast, re2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_re_empty(c: Z3_context, re: Z3_sort) Z3_ast;
pub extern fn Z3_mk_re_full(c: Z3_context, re: Z3_sort) Z3_ast;
pub extern fn Z3_mk_char(c: Z3_context, ch: c_uint) Z3_ast;
pub extern fn Z3_mk_char_le(c: Z3_context, ch1: Z3_ast, ch2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_char_to_int(c: Z3_context, ch: Z3_ast) Z3_ast;
pub extern fn Z3_mk_char_to_bv(c: Z3_context, ch: Z3_ast) Z3_ast;
pub extern fn Z3_mk_char_from_bv(c: Z3_context, bv: Z3_ast) Z3_ast;
pub extern fn Z3_mk_char_is_digit(c: Z3_context, ch: Z3_ast) Z3_ast;
pub extern fn Z3_mk_linear_order(c: Z3_context, a: Z3_sort, id: c_uint) Z3_func_decl;
pub extern fn Z3_mk_partial_order(c: Z3_context, a: Z3_sort, id: c_uint) Z3_func_decl;
pub extern fn Z3_mk_piecewise_linear_order(c: Z3_context, a: Z3_sort, id: c_uint) Z3_func_decl;
pub extern fn Z3_mk_tree_order(c: Z3_context, a: Z3_sort, id: c_uint) Z3_func_decl;
pub extern fn Z3_mk_transitive_closure(c: Z3_context, f: Z3_func_decl) Z3_func_decl;
pub extern fn Z3_mk_pattern(c: Z3_context, num_patterns: c_uint, terms: [*c]const Z3_ast) Z3_pattern;
pub extern fn Z3_mk_bound(c: Z3_context, index: c_uint, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_forall(c: Z3_context, weight: c_uint, num_patterns: c_uint, patterns: [*c]const Z3_pattern, num_decls: c_uint, sorts: [*c]const Z3_sort, decl_names: [*c]const Z3_symbol, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_exists(c: Z3_context, weight: c_uint, num_patterns: c_uint, patterns: [*c]const Z3_pattern, num_decls: c_uint, sorts: [*c]const Z3_sort, decl_names: [*c]const Z3_symbol, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_quantifier(c: Z3_context, is_forall: bool, weight: c_uint, num_patterns: c_uint, patterns: [*c]const Z3_pattern, num_decls: c_uint, sorts: [*c]const Z3_sort, decl_names: [*c]const Z3_symbol, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_quantifier_ex(c: Z3_context, is_forall: bool, weight: c_uint, quantifier_id: Z3_symbol, skolem_id: Z3_symbol, num_patterns: c_uint, patterns: [*c]const Z3_pattern, num_no_patterns: c_uint, no_patterns: [*c]const Z3_ast, num_decls: c_uint, sorts: [*c]const Z3_sort, decl_names: [*c]const Z3_symbol, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_forall_const(c: Z3_context, weight: c_uint, num_bound: c_uint, bound: [*c]const Z3_app, num_patterns: c_uint, patterns: [*c]const Z3_pattern, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_exists_const(c: Z3_context, weight: c_uint, num_bound: c_uint, bound: [*c]const Z3_app, num_patterns: c_uint, patterns: [*c]const Z3_pattern, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_quantifier_const(c: Z3_context, is_forall: bool, weight: c_uint, num_bound: c_uint, bound: [*c]const Z3_app, num_patterns: c_uint, patterns: [*c]const Z3_pattern, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_quantifier_const_ex(c: Z3_context, is_forall: bool, weight: c_uint, quantifier_id: Z3_symbol, skolem_id: Z3_symbol, num_bound: c_uint, bound: [*c]const Z3_app, num_patterns: c_uint, patterns: [*c]const Z3_pattern, num_no_patterns: c_uint, no_patterns: [*c]const Z3_ast, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_lambda(c: Z3_context, num_decls: c_uint, sorts: [*c]const Z3_sort, decl_names: [*c]const Z3_symbol, body: Z3_ast) Z3_ast;
pub extern fn Z3_mk_lambda_const(c: Z3_context, num_bound: c_uint, bound: [*c]const Z3_app, body: Z3_ast) Z3_ast;
pub extern fn Z3_get_symbol_kind(c: Z3_context, s: Z3_symbol) Z3_symbol_kind;
pub extern fn Z3_get_symbol_int(c: Z3_context, s: Z3_symbol) c_int;
pub extern fn Z3_get_symbol_string(c: Z3_context, s: Z3_symbol) Z3_string;
pub extern fn Z3_get_sort_name(c: Z3_context, d: Z3_sort) Z3_symbol;
pub extern fn Z3_get_sort_id(c: Z3_context, s: Z3_sort) c_uint;
pub extern fn Z3_sort_to_ast(c: Z3_context, s: Z3_sort) Z3_ast;
pub extern fn Z3_is_eq_sort(c: Z3_context, s1: Z3_sort, s2: Z3_sort) bool;
pub extern fn Z3_get_sort_kind(c: Z3_context, t: Z3_sort) Z3_sort_kind;
pub extern fn Z3_get_bv_sort_size(c: Z3_context, t: Z3_sort) c_uint;
pub extern fn Z3_get_finite_domain_sort_size(c: Z3_context, s: Z3_sort, r: [*c]u64) bool;
pub extern fn Z3_get_array_arity(c: Z3_context, s: Z3_sort) c_uint;
pub extern fn Z3_get_array_sort_domain(c: Z3_context, t: Z3_sort) Z3_sort;
pub extern fn Z3_get_array_sort_domain_n(c: Z3_context, t: Z3_sort, idx: c_uint) Z3_sort;
pub extern fn Z3_get_array_sort_range(c: Z3_context, t: Z3_sort) Z3_sort;
pub extern fn Z3_get_tuple_sort_mk_decl(c: Z3_context, t: Z3_sort) Z3_func_decl;
pub extern fn Z3_get_tuple_sort_num_fields(c: Z3_context, t: Z3_sort) c_uint;
pub extern fn Z3_get_tuple_sort_field_decl(c: Z3_context, t: Z3_sort, i: c_uint) Z3_func_decl;
pub extern fn Z3_is_recursive_datatype_sort(c: Z3_context, s: Z3_sort) bool;
pub extern fn Z3_get_datatype_sort_num_constructors(c: Z3_context, t: Z3_sort) c_uint;
pub extern fn Z3_get_datatype_sort_constructor(c: Z3_context, t: Z3_sort, idx: c_uint) Z3_func_decl;
pub extern fn Z3_get_datatype_sort_recognizer(c: Z3_context, t: Z3_sort, idx: c_uint) Z3_func_decl;
pub extern fn Z3_get_datatype_sort_constructor_accessor(c: Z3_context, t: Z3_sort, idx_c: c_uint, idx_a: c_uint) Z3_func_decl;
pub extern fn Z3_datatype_update_field(c: Z3_context, field_access: Z3_func_decl, t: Z3_ast, value: Z3_ast) Z3_ast;
pub extern fn Z3_get_relation_arity(c: Z3_context, s: Z3_sort) c_uint;
pub extern fn Z3_get_relation_column(c: Z3_context, s: Z3_sort, col: c_uint) Z3_sort;
pub extern fn Z3_mk_atmost(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast, k: c_uint) Z3_ast;
pub extern fn Z3_mk_atleast(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast, k: c_uint) Z3_ast;
pub extern fn Z3_mk_pble(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast, coeffs: [*c]const c_int, k: c_int) Z3_ast;
pub extern fn Z3_mk_pbge(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast, coeffs: [*c]const c_int, k: c_int) Z3_ast;
pub extern fn Z3_mk_pbeq(c: Z3_context, num_args: c_uint, args: [*c]const Z3_ast, coeffs: [*c]const c_int, k: c_int) Z3_ast;
pub extern fn Z3_func_decl_to_ast(c: Z3_context, f: Z3_func_decl) Z3_ast;
pub extern fn Z3_is_eq_func_decl(c: Z3_context, f1: Z3_func_decl, f2: Z3_func_decl) bool;
pub extern fn Z3_get_func_decl_id(c: Z3_context, f: Z3_func_decl) c_uint;
pub extern fn Z3_get_decl_name(c: Z3_context, d: Z3_func_decl) Z3_symbol;
pub extern fn Z3_get_decl_kind(c: Z3_context, d: Z3_func_decl) Z3_decl_kind;
pub extern fn Z3_get_domain_size(c: Z3_context, d: Z3_func_decl) c_uint;
pub extern fn Z3_get_arity(c: Z3_context, d: Z3_func_decl) c_uint;
pub extern fn Z3_get_domain(c: Z3_context, d: Z3_func_decl, i: c_uint) Z3_sort;
pub extern fn Z3_get_range(c: Z3_context, d: Z3_func_decl) Z3_sort;
pub extern fn Z3_get_decl_num_parameters(c: Z3_context, d: Z3_func_decl) c_uint;
pub extern fn Z3_get_decl_parameter_kind(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_parameter_kind;
pub extern fn Z3_get_decl_int_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) c_int;
pub extern fn Z3_get_decl_double_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) f64;
pub extern fn Z3_get_decl_symbol_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_symbol;
pub extern fn Z3_get_decl_sort_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_sort;
pub extern fn Z3_get_decl_ast_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_ast;
pub extern fn Z3_get_decl_func_decl_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_func_decl;
pub extern fn Z3_get_decl_rational_parameter(c: Z3_context, d: Z3_func_decl, idx: c_uint) Z3_string;
pub extern fn Z3_app_to_ast(c: Z3_context, a: Z3_app) Z3_ast;
pub extern fn Z3_get_app_decl(c: Z3_context, a: Z3_app) Z3_func_decl;
pub extern fn Z3_get_app_num_args(c: Z3_context, a: Z3_app) c_uint;
pub extern fn Z3_get_app_arg(c: Z3_context, a: Z3_app, i: c_uint) Z3_ast;
pub extern fn Z3_is_eq_ast(c: Z3_context, t1: Z3_ast, t2: Z3_ast) bool;
pub extern fn Z3_get_ast_id(c: Z3_context, t: Z3_ast) c_uint;
pub extern fn Z3_get_ast_hash(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_get_sort(c: Z3_context, a: Z3_ast) Z3_sort;
pub extern fn Z3_is_well_sorted(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_get_bool_value(c: Z3_context, a: Z3_ast) Z3_lbool;
pub extern fn Z3_get_ast_kind(c: Z3_context, a: Z3_ast) Z3_ast_kind;
pub extern fn Z3_is_app(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_is_ground(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_get_depth(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_is_numeral_ast(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_is_algebraic_number(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_to_app(c: Z3_context, a: Z3_ast) Z3_app;
pub extern fn Z3_to_func_decl(c: Z3_context, a: Z3_ast) Z3_func_decl;
pub extern fn Z3_get_numeral_string(c: Z3_context, a: Z3_ast) Z3_string;
pub extern fn Z3_get_numeral_binary_string(c: Z3_context, a: Z3_ast) Z3_string;
pub extern fn Z3_get_numeral_decimal_string(c: Z3_context, a: Z3_ast, precision: c_uint) Z3_string;
pub extern fn Z3_get_numeral_double(c: Z3_context, a: Z3_ast) f64;
pub extern fn Z3_get_numerator(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_get_denominator(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_get_numeral_small(c: Z3_context, a: Z3_ast, num: [*c]i64, den: [*c]i64) bool;
pub extern fn Z3_get_numeral_int(c: Z3_context, v: Z3_ast, i: [*c]c_int) bool;
pub extern fn Z3_get_numeral_uint(c: Z3_context, v: Z3_ast, u: [*c]c_uint) bool;
pub extern fn Z3_get_numeral_uint64(c: Z3_context, v: Z3_ast, u: [*c]u64) bool;
pub extern fn Z3_get_numeral_int64(c: Z3_context, v: Z3_ast, i: [*c]i64) bool;
pub extern fn Z3_get_numeral_rational_int64(c: Z3_context, v: Z3_ast, num: [*c]i64, den: [*c]i64) bool;
pub extern fn Z3_get_algebraic_number_lower(c: Z3_context, a: Z3_ast, precision: c_uint) Z3_ast;
pub extern fn Z3_get_algebraic_number_upper(c: Z3_context, a: Z3_ast, precision: c_uint) Z3_ast;
pub extern fn Z3_pattern_to_ast(c: Z3_context, p: Z3_pattern) Z3_ast;
pub extern fn Z3_get_pattern_num_terms(c: Z3_context, p: Z3_pattern) c_uint;
pub extern fn Z3_get_pattern(c: Z3_context, p: Z3_pattern, idx: c_uint) Z3_ast;
pub extern fn Z3_get_index_value(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_is_quantifier_forall(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_is_quantifier_exists(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_is_lambda(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_get_quantifier_weight(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_get_quantifier_skolem_id(c: Z3_context, a: Z3_ast) Z3_symbol;
pub extern fn Z3_get_quantifier_id(c: Z3_context, a: Z3_ast) Z3_symbol;
pub extern fn Z3_get_quantifier_num_patterns(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_get_quantifier_pattern_ast(c: Z3_context, a: Z3_ast, i: c_uint) Z3_pattern;
pub extern fn Z3_get_quantifier_num_no_patterns(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_get_quantifier_no_pattern_ast(c: Z3_context, a: Z3_ast, i: c_uint) Z3_ast;
pub extern fn Z3_get_quantifier_num_bound(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_get_quantifier_bound_name(c: Z3_context, a: Z3_ast, i: c_uint) Z3_symbol;
pub extern fn Z3_get_quantifier_bound_sort(c: Z3_context, a: Z3_ast, i: c_uint) Z3_sort;
pub extern fn Z3_get_quantifier_body(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_simplify(c: Z3_context, a: Z3_ast) Z3_ast;
pub extern fn Z3_simplify_ex(c: Z3_context, a: Z3_ast, p: Z3_params) Z3_ast;
pub extern fn Z3_simplify_get_help(c: Z3_context) Z3_string;
pub extern fn Z3_simplify_get_param_descrs(c: Z3_context) Z3_param_descrs;
pub extern fn Z3_update_term(c: Z3_context, a: Z3_ast, num_args: c_uint, args: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_substitute(c: Z3_context, a: Z3_ast, num_exprs: c_uint, from: [*c]const Z3_ast, to: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_substitute_vars(c: Z3_context, a: Z3_ast, num_exprs: c_uint, to: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_substitute_funs(c: Z3_context, a: Z3_ast, num_funs: c_uint, from: [*c]const Z3_func_decl, to: [*c]const Z3_ast) Z3_ast;
pub extern fn Z3_translate(source: Z3_context, a: Z3_ast, target: Z3_context) Z3_ast;
pub extern fn Z3_mk_model(c: Z3_context) Z3_model;
pub extern fn Z3_model_inc_ref(c: Z3_context, m: Z3_model) void;
pub extern fn Z3_model_dec_ref(c: Z3_context, m: Z3_model) void;
pub extern fn Z3_model_eval(c: Z3_context, m: Z3_model, t: Z3_ast, model_completion: bool, v: [*c]Z3_ast) bool;
pub extern fn Z3_model_get_const_interp(c: Z3_context, m: Z3_model, a: Z3_func_decl) Z3_ast;
pub extern fn Z3_model_has_interp(c: Z3_context, m: Z3_model, a: Z3_func_decl) bool;
pub extern fn Z3_model_get_func_interp(c: Z3_context, m: Z3_model, f: Z3_func_decl) Z3_func_interp;
pub extern fn Z3_model_get_num_consts(c: Z3_context, m: Z3_model) c_uint;
pub extern fn Z3_model_get_const_decl(c: Z3_context, m: Z3_model, i: c_uint) Z3_func_decl;
pub extern fn Z3_model_get_num_funcs(c: Z3_context, m: Z3_model) c_uint;
pub extern fn Z3_model_get_func_decl(c: Z3_context, m: Z3_model, i: c_uint) Z3_func_decl;
pub extern fn Z3_model_get_num_sorts(c: Z3_context, m: Z3_model) c_uint;
pub extern fn Z3_model_get_sort(c: Z3_context, m: Z3_model, i: c_uint) Z3_sort;
pub extern fn Z3_model_get_sort_universe(c: Z3_context, m: Z3_model, s: Z3_sort) Z3_ast_vector;
pub extern fn Z3_model_translate(c: Z3_context, m: Z3_model, dst: Z3_context) Z3_model;
pub extern fn Z3_is_as_array(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_get_as_array_func_decl(c: Z3_context, a: Z3_ast) Z3_func_decl;
pub extern fn Z3_add_func_interp(c: Z3_context, m: Z3_model, f: Z3_func_decl, default_value: Z3_ast) Z3_func_interp;
pub extern fn Z3_add_const_interp(c: Z3_context, m: Z3_model, f: Z3_func_decl, a: Z3_ast) void;
pub extern fn Z3_func_interp_inc_ref(c: Z3_context, f: Z3_func_interp) void;
pub extern fn Z3_func_interp_dec_ref(c: Z3_context, f: Z3_func_interp) void;
pub extern fn Z3_func_interp_get_num_entries(c: Z3_context, f: Z3_func_interp) c_uint;
pub extern fn Z3_func_interp_get_entry(c: Z3_context, f: Z3_func_interp, i: c_uint) Z3_func_entry;
pub extern fn Z3_func_interp_get_else(c: Z3_context, f: Z3_func_interp) Z3_ast;
pub extern fn Z3_func_interp_set_else(c: Z3_context, f: Z3_func_interp, else_value: Z3_ast) void;
pub extern fn Z3_func_interp_get_arity(c: Z3_context, f: Z3_func_interp) c_uint;
pub extern fn Z3_func_interp_add_entry(c: Z3_context, fi: Z3_func_interp, args: Z3_ast_vector, value: Z3_ast) void;
pub extern fn Z3_func_entry_inc_ref(c: Z3_context, e: Z3_func_entry) void;
pub extern fn Z3_func_entry_dec_ref(c: Z3_context, e: Z3_func_entry) void;
pub extern fn Z3_func_entry_get_value(c: Z3_context, e: Z3_func_entry) Z3_ast;
pub extern fn Z3_func_entry_get_num_args(c: Z3_context, e: Z3_func_entry) c_uint;
pub extern fn Z3_func_entry_get_arg(c: Z3_context, e: Z3_func_entry, i: c_uint) Z3_ast;
pub extern fn Z3_open_log(filename: Z3_string) bool;
pub extern fn Z3_append_log(string: Z3_string) void;
pub extern fn Z3_close_log() void;
pub extern fn Z3_toggle_warning_messages(enabled: bool) void;
pub extern fn Z3_set_ast_print_mode(c: Z3_context, mode: Z3_ast_print_mode) void;
pub extern fn Z3_ast_to_string(c: Z3_context, a: Z3_ast) Z3_string;
pub extern fn Z3_pattern_to_string(c: Z3_context, p: Z3_pattern) Z3_string;
pub extern fn Z3_sort_to_string(c: Z3_context, s: Z3_sort) Z3_string;
pub extern fn Z3_func_decl_to_string(c: Z3_context, d: Z3_func_decl) Z3_string;
pub extern fn Z3_model_to_string(c: Z3_context, m: Z3_model) Z3_string;
pub extern fn Z3_benchmark_to_smtlib_string(c: Z3_context, name: Z3_string, logic: Z3_string, status: Z3_string, attributes: Z3_string, num_assumptions: c_uint, assumptions: [*c]const Z3_ast, formula: Z3_ast) Z3_string;
pub extern fn Z3_parse_smtlib2_string(c: Z3_context, str: Z3_string, num_sorts: c_uint, sort_names: [*c]const Z3_symbol, sorts: [*c]const Z3_sort, num_decls: c_uint, decl_names: [*c]const Z3_symbol, decls: [*c]const Z3_func_decl) Z3_ast_vector;
pub extern fn Z3_parse_smtlib2_file(c: Z3_context, file_name: Z3_string, num_sorts: c_uint, sort_names: [*c]const Z3_symbol, sorts: [*c]const Z3_sort, num_decls: c_uint, decl_names: [*c]const Z3_symbol, decls: [*c]const Z3_func_decl) Z3_ast_vector;
pub extern fn Z3_eval_smtlib2_string(c: Z3_context, str: Z3_string) Z3_string;
pub extern fn Z3_mk_parser_context(c: Z3_context) Z3_parser_context;
pub extern fn Z3_parser_context_inc_ref(c: Z3_context, pc: Z3_parser_context) void;
pub extern fn Z3_parser_context_dec_ref(c: Z3_context, pc: Z3_parser_context) void;
pub extern fn Z3_parser_context_add_sort(c: Z3_context, pc: Z3_parser_context, s: Z3_sort) void;
pub extern fn Z3_parser_context_add_decl(c: Z3_context, pc: Z3_parser_context, f: Z3_func_decl) void;
pub extern fn Z3_parser_context_from_string(c: Z3_context, pc: Z3_parser_context, s: Z3_string) Z3_ast_vector;
pub extern fn Z3_get_error_code(c: Z3_context) Z3_error_code;
pub extern fn Z3_set_error_handler(c: Z3_context, h: ?*const Z3_error_handler) void;
pub extern fn Z3_set_error(c: Z3_context, e: Z3_error_code) void;
pub extern fn Z3_get_error_msg(c: Z3_context, err: Z3_error_code) Z3_string;
pub extern fn Z3_get_version(major: [*c]c_uint, minor: [*c]c_uint, build_number: [*c]c_uint, revision_number: [*c]c_uint) void;
pub extern fn Z3_get_full_version() Z3_string;
pub extern fn Z3_enable_trace(tag: Z3_string) void;
pub extern fn Z3_disable_trace(tag: Z3_string) void;
pub extern fn Z3_reset_memory() void;
pub extern fn Z3_finalize_memory() void;
pub extern fn Z3_mk_goal(c: Z3_context, models: bool, unsat_cores: bool, proofs: bool) Z3_goal;
pub extern fn Z3_goal_inc_ref(c: Z3_context, g: Z3_goal) void;
pub extern fn Z3_goal_dec_ref(c: Z3_context, g: Z3_goal) void;
pub extern fn Z3_goal_precision(c: Z3_context, g: Z3_goal) Z3_goal_prec;
pub extern fn Z3_goal_assert(c: Z3_context, g: Z3_goal, a: Z3_ast) void;
pub extern fn Z3_goal_inconsistent(c: Z3_context, g: Z3_goal) bool;
pub extern fn Z3_goal_depth(c: Z3_context, g: Z3_goal) c_uint;
pub extern fn Z3_goal_reset(c: Z3_context, g: Z3_goal) void;
pub extern fn Z3_goal_size(c: Z3_context, g: Z3_goal) c_uint;
pub extern fn Z3_goal_formula(c: Z3_context, g: Z3_goal, idx: c_uint) Z3_ast;
pub extern fn Z3_goal_num_exprs(c: Z3_context, g: Z3_goal) c_uint;
pub extern fn Z3_goal_is_decided_sat(c: Z3_context, g: Z3_goal) bool;
pub extern fn Z3_goal_is_decided_unsat(c: Z3_context, g: Z3_goal) bool;
pub extern fn Z3_goal_translate(source: Z3_context, g: Z3_goal, target: Z3_context) Z3_goal;
pub extern fn Z3_goal_convert_model(c: Z3_context, g: Z3_goal, m: Z3_model) Z3_model;
pub extern fn Z3_goal_to_string(c: Z3_context, g: Z3_goal) Z3_string;
pub extern fn Z3_goal_to_dimacs_string(c: Z3_context, g: Z3_goal, include_names: bool) Z3_string;
pub extern fn Z3_mk_tactic(c: Z3_context, name: Z3_string) Z3_tactic;
pub extern fn Z3_tactic_inc_ref(c: Z3_context, t: Z3_tactic) void;
pub extern fn Z3_tactic_dec_ref(c: Z3_context, g: Z3_tactic) void;
pub extern fn Z3_mk_probe(c: Z3_context, name: Z3_string) Z3_probe;
pub extern fn Z3_probe_inc_ref(c: Z3_context, p: Z3_probe) void;
pub extern fn Z3_probe_dec_ref(c: Z3_context, p: Z3_probe) void;
pub extern fn Z3_tactic_and_then(c: Z3_context, t1: Z3_tactic, t2: Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_or_else(c: Z3_context, t1: Z3_tactic, t2: Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_par_or(c: Z3_context, num: c_uint, ts: [*c]const Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_par_and_then(c: Z3_context, t1: Z3_tactic, t2: Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_try_for(c: Z3_context, t: Z3_tactic, ms: c_uint) Z3_tactic;
pub extern fn Z3_tactic_when(c: Z3_context, p: Z3_probe, t: Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_cond(c: Z3_context, p: Z3_probe, t1: Z3_tactic, t2: Z3_tactic) Z3_tactic;
pub extern fn Z3_tactic_repeat(c: Z3_context, t: Z3_tactic, max: c_uint) Z3_tactic;
pub extern fn Z3_tactic_skip(c: Z3_context) Z3_tactic;
pub extern fn Z3_tactic_fail(c: Z3_context) Z3_tactic;
pub extern fn Z3_tactic_fail_if(c: Z3_context, p: Z3_probe) Z3_tactic;
pub extern fn Z3_tactic_fail_if_not_decided(c: Z3_context) Z3_tactic;
pub extern fn Z3_tactic_using_params(c: Z3_context, t: Z3_tactic, p: Z3_params) Z3_tactic;
pub extern fn Z3_mk_simplifier(c: Z3_context, name: Z3_string) Z3_simplifier;
pub extern fn Z3_simplifier_inc_ref(c: Z3_context, t: Z3_simplifier) void;
pub extern fn Z3_simplifier_dec_ref(c: Z3_context, g: Z3_simplifier) void;
pub extern fn Z3_solver_add_simplifier(c: Z3_context, solver: Z3_solver, simplifier: Z3_simplifier) Z3_solver;
pub extern fn Z3_simplifier_and_then(c: Z3_context, t1: Z3_simplifier, t2: Z3_simplifier) Z3_simplifier;
pub extern fn Z3_simplifier_using_params(c: Z3_context, t: Z3_simplifier, p: Z3_params) Z3_simplifier;
pub extern fn Z3_get_num_simplifiers(c: Z3_context) c_uint;
pub extern fn Z3_get_simplifier_name(c: Z3_context, i: c_uint) Z3_string;
pub extern fn Z3_simplifier_get_help(c: Z3_context, t: Z3_simplifier) Z3_string;
pub extern fn Z3_simplifier_get_param_descrs(c: Z3_context, t: Z3_simplifier) Z3_param_descrs;
pub extern fn Z3_simplifier_get_descr(c: Z3_context, name: Z3_string) Z3_string;
pub extern fn Z3_probe_const(x: Z3_context, val: f64) Z3_probe;
pub extern fn Z3_probe_lt(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_gt(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_le(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_ge(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_eq(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_and(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_or(x: Z3_context, p1: Z3_probe, p2: Z3_probe) Z3_probe;
pub extern fn Z3_probe_not(x: Z3_context, p: Z3_probe) Z3_probe;
pub extern fn Z3_get_num_tactics(c: Z3_context) c_uint;
pub extern fn Z3_get_tactic_name(c: Z3_context, i: c_uint) Z3_string;
pub extern fn Z3_get_num_probes(c: Z3_context) c_uint;
pub extern fn Z3_get_probe_name(c: Z3_context, i: c_uint) Z3_string;
pub extern fn Z3_tactic_get_help(c: Z3_context, t: Z3_tactic) Z3_string;
pub extern fn Z3_tactic_get_param_descrs(c: Z3_context, t: Z3_tactic) Z3_param_descrs;
pub extern fn Z3_tactic_get_descr(c: Z3_context, name: Z3_string) Z3_string;
pub extern fn Z3_probe_get_descr(c: Z3_context, name: Z3_string) Z3_string;
pub extern fn Z3_probe_apply(c: Z3_context, p: Z3_probe, g: Z3_goal) f64;
pub extern fn Z3_tactic_apply(c: Z3_context, t: Z3_tactic, g: Z3_goal) Z3_apply_result;
pub extern fn Z3_tactic_apply_ex(c: Z3_context, t: Z3_tactic, g: Z3_goal, p: Z3_params) Z3_apply_result;
pub extern fn Z3_apply_result_inc_ref(c: Z3_context, r: Z3_apply_result) void;
pub extern fn Z3_apply_result_dec_ref(c: Z3_context, r: Z3_apply_result) void;
pub extern fn Z3_apply_result_to_string(c: Z3_context, r: Z3_apply_result) Z3_string;
pub extern fn Z3_apply_result_get_num_subgoals(c: Z3_context, r: Z3_apply_result) c_uint;
pub extern fn Z3_apply_result_get_subgoal(c: Z3_context, r: Z3_apply_result, i: c_uint) Z3_goal;
pub extern fn Z3_mk_solver(c: Z3_context) Z3_solver;
pub extern fn Z3_mk_simple_solver(c: Z3_context) Z3_solver;
pub extern fn Z3_mk_solver_for_logic(c: Z3_context, logic: Z3_symbol) Z3_solver;
pub extern fn Z3_mk_solver_from_tactic(c: Z3_context, t: Z3_tactic) Z3_solver;
pub extern fn Z3_solver_translate(source: Z3_context, s: Z3_solver, target: Z3_context) Z3_solver;
pub extern fn Z3_solver_import_model_converter(ctx: Z3_context, src: Z3_solver, dst: Z3_solver) void;
pub extern fn Z3_solver_get_help(c: Z3_context, s: Z3_solver) Z3_string;
pub extern fn Z3_solver_get_param_descrs(c: Z3_context, s: Z3_solver) Z3_param_descrs;
pub extern fn Z3_solver_set_params(c: Z3_context, s: Z3_solver, p: Z3_params) void;
pub extern fn Z3_solver_inc_ref(c: Z3_context, s: Z3_solver) void;
pub extern fn Z3_solver_dec_ref(c: Z3_context, s: Z3_solver) void;
pub extern fn Z3_solver_interrupt(c: Z3_context, s: Z3_solver) void;
pub extern fn Z3_solver_push(c: Z3_context, s: Z3_solver) void;
pub extern fn Z3_solver_pop(c: Z3_context, s: Z3_solver, n: c_uint) void;
pub extern fn Z3_solver_reset(c: Z3_context, s: Z3_solver) void;
pub extern fn Z3_solver_get_num_scopes(c: Z3_context, s: Z3_solver) c_uint;
pub extern fn Z3_solver_assert(c: Z3_context, s: Z3_solver, a: Z3_ast) void;
pub extern fn Z3_solver_assert_and_track(c: Z3_context, s: Z3_solver, a: Z3_ast, p: Z3_ast) void;
pub extern fn Z3_solver_from_file(c: Z3_context, s: Z3_solver, file_name: Z3_string) void;
pub extern fn Z3_solver_from_string(c: Z3_context, s: Z3_solver, str: Z3_string) void;
pub extern fn Z3_solver_get_assertions(c: Z3_context, s: Z3_solver) Z3_ast_vector;
pub extern fn Z3_solver_get_units(c: Z3_context, s: Z3_solver) Z3_ast_vector;
pub extern fn Z3_solver_get_trail(c: Z3_context, s: Z3_solver) Z3_ast_vector;
pub extern fn Z3_solver_get_non_units(c: Z3_context, s: Z3_solver) Z3_ast_vector;
pub extern fn Z3_solver_get_levels(c: Z3_context, s: Z3_solver, literals: Z3_ast_vector, sz: c_uint, levels: [*c]c_uint) void;
pub extern fn Z3_solver_congruence_root(c: Z3_context, s: Z3_solver, a: Z3_ast) Z3_ast;
pub extern fn Z3_solver_congruence_next(c: Z3_context, s: Z3_solver, a: Z3_ast) Z3_ast;
pub extern fn Z3_solver_congruence_explain(c: Z3_context, s: Z3_solver, a: Z3_ast, b: Z3_ast) Z3_ast;
pub extern fn Z3_solver_solve_for(c: Z3_context, s: Z3_solver, variables: Z3_ast_vector, terms: Z3_ast_vector, guards: Z3_ast_vector) void;
pub extern fn Z3_solver_register_on_clause(c: Z3_context, s: Z3_solver, user_context: ?*anyopaque, on_clause_eh: ?*const Z3_on_clause_eh) void;
pub extern fn Z3_solver_propagate_init(c: Z3_context, s: Z3_solver, user_context: ?*anyopaque, push_eh: ?*const Z3_push_eh, pop_eh: ?*const Z3_pop_eh, fresh_eh: ?*const Z3_fresh_eh) void;
pub extern fn Z3_solver_propagate_fixed(c: Z3_context, s: Z3_solver, fixed_eh: ?*const Z3_fixed_eh) void;
pub extern fn Z3_solver_propagate_final(c: Z3_context, s: Z3_solver, final_eh: ?*const Z3_final_eh) void;
pub extern fn Z3_solver_propagate_eq(c: Z3_context, s: Z3_solver, eq_eh: ?*const Z3_eq_eh) void;
pub extern fn Z3_solver_propagate_diseq(c: Z3_context, s: Z3_solver, eq_eh: ?*const Z3_eq_eh) void;
pub extern fn Z3_solver_propagate_created(c: Z3_context, s: Z3_solver, created_eh: ?*const Z3_created_eh) void;
pub extern fn Z3_solver_propagate_decide(c: Z3_context, s: Z3_solver, decide_eh: ?*const Z3_decide_eh) void;
pub extern fn Z3_solver_propagate_on_binding(c: Z3_context, s: Z3_solver, on_binding_eh: ?*const Z3_on_binding_eh) void;
pub extern fn Z3_solver_next_split(c: Z3_context, cb: Z3_solver_callback, t: Z3_ast, idx: c_uint, phase: Z3_lbool) bool;
pub extern fn Z3_solver_propagate_declare(c: Z3_context, name: Z3_symbol, n: c_uint, domain: [*c]Z3_sort, range: Z3_sort) Z3_func_decl;
pub extern fn Z3_solver_propagate_register(c: Z3_context, s: Z3_solver, e: Z3_ast) void;
pub extern fn Z3_solver_propagate_register_cb(c: Z3_context, cb: Z3_solver_callback, e: Z3_ast) void;
pub extern fn Z3_solver_propagate_consequence(c: Z3_context, cb: Z3_solver_callback, num_fixed: c_uint, fixed: [*c]const Z3_ast, num_eqs: c_uint, eq_lhs: [*c]const Z3_ast, eq_rhs: [*c]const Z3_ast, conseq: Z3_ast) bool;
pub extern fn Z3_solver_set_initial_value(c: Z3_context, s: Z3_solver, v: Z3_ast, val: Z3_ast) void;
pub extern fn Z3_solver_check(c: Z3_context, s: Z3_solver) Z3_lbool;
pub extern fn Z3_solver_check_assumptions(c: Z3_context, s: Z3_solver, num_assumptions: c_uint, assumptions: [*c]const Z3_ast) Z3_lbool;
pub extern fn Z3_get_implied_equalities(c: Z3_context, s: Z3_solver, num_terms: c_uint, terms: [*c]const Z3_ast, class_ids: [*c]c_uint) Z3_lbool;
pub extern fn Z3_solver_get_consequences(c: Z3_context, s: Z3_solver, assumptions: Z3_ast_vector, variables: Z3_ast_vector, consequences: Z3_ast_vector) Z3_lbool;
pub extern fn Z3_solver_cube(c: Z3_context, s: Z3_solver, vars: Z3_ast_vector, backtrack_level: c_uint) Z3_ast_vector;
pub extern fn Z3_solver_get_model(c: Z3_context, s: Z3_solver) Z3_model;
pub extern fn Z3_solver_get_proof(c: Z3_context, s: Z3_solver) Z3_ast;
pub extern fn Z3_solver_get_unsat_core(c: Z3_context, s: Z3_solver) Z3_ast_vector;
pub extern fn Z3_solver_get_reason_unknown(c: Z3_context, s: Z3_solver) Z3_string;
pub extern fn Z3_solver_get_statistics(c: Z3_context, s: Z3_solver) Z3_stats;
pub extern fn Z3_solver_to_string(c: Z3_context, s: Z3_solver) Z3_string;
pub extern fn Z3_solver_to_dimacs_string(c: Z3_context, s: Z3_solver, include_names: bool) Z3_string;
pub extern fn Z3_stats_to_string(c: Z3_context, s: Z3_stats) Z3_string;
pub extern fn Z3_stats_inc_ref(c: Z3_context, s: Z3_stats) void;
pub extern fn Z3_stats_dec_ref(c: Z3_context, s: Z3_stats) void;
pub extern fn Z3_stats_size(c: Z3_context, s: Z3_stats) c_uint;
pub extern fn Z3_stats_get_key(c: Z3_context, s: Z3_stats, idx: c_uint) Z3_string;
pub extern fn Z3_stats_is_uint(c: Z3_context, s: Z3_stats, idx: c_uint) bool;
pub extern fn Z3_stats_is_double(c: Z3_context, s: Z3_stats, idx: c_uint) bool;
pub extern fn Z3_stats_get_uint_value(c: Z3_context, s: Z3_stats, idx: c_uint) c_uint;
pub extern fn Z3_stats_get_double_value(c: Z3_context, s: Z3_stats, idx: c_uint) f64;
pub extern fn Z3_get_estimated_alloc_size() u64;
pub extern fn Z3_mk_ast_vector(c: Z3_context) Z3_ast_vector;
pub extern fn Z3_ast_vector_inc_ref(c: Z3_context, v: Z3_ast_vector) void;
pub extern fn Z3_ast_vector_dec_ref(c: Z3_context, v: Z3_ast_vector) void;
pub extern fn Z3_ast_vector_size(c: Z3_context, v: Z3_ast_vector) c_uint;
pub extern fn Z3_ast_vector_get(c: Z3_context, v: Z3_ast_vector, i: c_uint) Z3_ast;
pub extern fn Z3_ast_vector_set(c: Z3_context, v: Z3_ast_vector, i: c_uint, a: Z3_ast) void;
pub extern fn Z3_ast_vector_resize(c: Z3_context, v: Z3_ast_vector, n: c_uint) void;
pub extern fn Z3_ast_vector_push(c: Z3_context, v: Z3_ast_vector, a: Z3_ast) void;
pub extern fn Z3_ast_vector_translate(s: Z3_context, v: Z3_ast_vector, t: Z3_context) Z3_ast_vector;
pub extern fn Z3_ast_vector_to_string(c: Z3_context, v: Z3_ast_vector) Z3_string;
pub extern fn Z3_mk_ast_map(c: Z3_context) Z3_ast_map;
pub extern fn Z3_ast_map_inc_ref(c: Z3_context, m: Z3_ast_map) void;
pub extern fn Z3_ast_map_dec_ref(c: Z3_context, m: Z3_ast_map) void;
pub extern fn Z3_ast_map_contains(c: Z3_context, m: Z3_ast_map, k: Z3_ast) bool;
pub extern fn Z3_ast_map_find(c: Z3_context, m: Z3_ast_map, k: Z3_ast) Z3_ast;
pub extern fn Z3_ast_map_insert(c: Z3_context, m: Z3_ast_map, k: Z3_ast, v: Z3_ast) void;
pub extern fn Z3_ast_map_erase(c: Z3_context, m: Z3_ast_map, k: Z3_ast) void;
pub extern fn Z3_ast_map_reset(c: Z3_context, m: Z3_ast_map) void;
pub extern fn Z3_ast_map_size(c: Z3_context, m: Z3_ast_map) c_uint;
pub extern fn Z3_ast_map_keys(c: Z3_context, m: Z3_ast_map) Z3_ast_vector;
pub extern fn Z3_ast_map_to_string(c: Z3_context, m: Z3_ast_map) Z3_string;
pub extern fn Z3_algebraic_is_value(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_algebraic_is_pos(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_algebraic_is_neg(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_algebraic_is_zero(c: Z3_context, a: Z3_ast) bool;
pub extern fn Z3_algebraic_sign(c: Z3_context, a: Z3_ast) c_int;
pub extern fn Z3_algebraic_add(c: Z3_context, a: Z3_ast, b: Z3_ast) Z3_ast;
pub extern fn Z3_algebraic_sub(c: Z3_context, a: Z3_ast, b: Z3_ast) Z3_ast;
pub extern fn Z3_algebraic_mul(c: Z3_context, a: Z3_ast, b: Z3_ast) Z3_ast;
pub extern fn Z3_algebraic_div(c: Z3_context, a: Z3_ast, b: Z3_ast) Z3_ast;
pub extern fn Z3_algebraic_root(c: Z3_context, a: Z3_ast, k: c_uint) Z3_ast;
pub extern fn Z3_algebraic_power(c: Z3_context, a: Z3_ast, k: c_uint) Z3_ast;
pub extern fn Z3_algebraic_lt(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_gt(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_le(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_ge(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_eq(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_neq(c: Z3_context, a: Z3_ast, b: Z3_ast) bool;
pub extern fn Z3_algebraic_roots(c: Z3_context, p: Z3_ast, n: c_uint, a: [*c]Z3_ast) Z3_ast_vector;
pub extern fn Z3_algebraic_eval(c: Z3_context, p: Z3_ast, n: c_uint, a: [*c]Z3_ast) c_int;
pub extern fn Z3_algebraic_get_poly(c: Z3_context, a: Z3_ast) Z3_ast_vector;
pub extern fn Z3_algebraic_get_i(c: Z3_context, a: Z3_ast) c_uint;
pub extern fn Z3_polynomial_subresultants(c: Z3_context, p: Z3_ast, q: Z3_ast, x: Z3_ast) Z3_ast_vector;
pub extern fn Z3_rcf_del(c: Z3_context, a: Z3_rcf_num) void;
pub extern fn Z3_rcf_mk_rational(c: Z3_context, val: Z3_string) Z3_rcf_num;
pub extern fn Z3_rcf_mk_small_int(c: Z3_context, val: c_int) Z3_rcf_num;
pub extern fn Z3_rcf_mk_pi(c: Z3_context) Z3_rcf_num;
pub extern fn Z3_rcf_mk_e(c: Z3_context) Z3_rcf_num;
pub extern fn Z3_rcf_mk_infinitesimal(c: Z3_context) Z3_rcf_num;
pub extern fn Z3_rcf_mk_roots(c: Z3_context, n: c_uint, a: [*c]const Z3_rcf_num, roots: [*c]Z3_rcf_num) c_uint;
pub extern fn Z3_rcf_add(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_sub(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_mul(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_div(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_neg(c: Z3_context, a: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_inv(c: Z3_context, a: Z3_rcf_num) Z3_rcf_num;
pub extern fn Z3_rcf_power(c: Z3_context, a: Z3_rcf_num, k: c_uint) Z3_rcf_num;
pub extern fn Z3_rcf_lt(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_gt(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_le(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_ge(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_eq(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_neq(c: Z3_context, a: Z3_rcf_num, b: Z3_rcf_num) bool;
pub extern fn Z3_rcf_num_to_string(c: Z3_context, a: Z3_rcf_num, compact: bool, html: bool) Z3_string;
pub extern fn Z3_rcf_num_to_decimal_string(c: Z3_context, a: Z3_rcf_num, prec: c_uint) Z3_string;
pub extern fn Z3_rcf_get_numerator_denominator(c: Z3_context, a: Z3_rcf_num, n: [*c]Z3_rcf_num, d: [*c]Z3_rcf_num) void;
pub extern fn Z3_rcf_is_rational(c: Z3_context, a: Z3_rcf_num) bool;
pub extern fn Z3_rcf_is_algebraic(c: Z3_context, a: Z3_rcf_num) bool;
pub extern fn Z3_rcf_is_infinitesimal(c: Z3_context, a: Z3_rcf_num) bool;
pub extern fn Z3_rcf_is_transcendental(c: Z3_context, a: Z3_rcf_num) bool;
pub extern fn Z3_rcf_extension_index(c: Z3_context, a: Z3_rcf_num) c_uint;
pub extern fn Z3_rcf_transcendental_name(c: Z3_context, a: Z3_rcf_num) Z3_symbol;
pub extern fn Z3_rcf_infinitesimal_name(c: Z3_context, a: Z3_rcf_num) Z3_symbol;
pub extern fn Z3_rcf_num_coefficients(c: Z3_context, a: Z3_rcf_num) c_uint;
pub extern fn Z3_rcf_coefficient(c: Z3_context, a: Z3_rcf_num, i: c_uint) Z3_rcf_num;
pub extern fn Z3_rcf_interval(c: Z3_context, a: Z3_rcf_num, lower_is_inf: [*c]c_int, lower_is_open: [*c]c_int, lower: [*c]Z3_rcf_num, upper_is_inf: [*c]c_int, upper_is_open: [*c]c_int, upper: [*c]Z3_rcf_num) c_int;
pub extern fn Z3_rcf_num_sign_conditions(c: Z3_context, a: Z3_rcf_num) c_uint;
pub extern fn Z3_rcf_sign_condition_sign(c: Z3_context, a: Z3_rcf_num, i: c_uint) c_int;
pub extern fn Z3_rcf_num_sign_condition_coefficients(c: Z3_context, a: Z3_rcf_num, i: c_uint) c_uint;
pub extern fn Z3_rcf_sign_condition_coefficient(c: Z3_context, a: Z3_rcf_num, i: c_uint, j: c_uint) Z3_rcf_num;
pub extern fn Z3_mk_fixedpoint(c: Z3_context) Z3_fixedpoint;
pub extern fn Z3_fixedpoint_inc_ref(c: Z3_context, d: Z3_fixedpoint) void;
pub extern fn Z3_fixedpoint_dec_ref(c: Z3_context, d: Z3_fixedpoint) void;
pub extern fn Z3_fixedpoint_add_rule(c: Z3_context, d: Z3_fixedpoint, rule: Z3_ast, name: Z3_symbol) void;
pub extern fn Z3_fixedpoint_add_fact(c: Z3_context, d: Z3_fixedpoint, r: Z3_func_decl, num_args: c_uint, args: [*c]c_uint) void;
pub extern fn Z3_fixedpoint_assert(c: Z3_context, d: Z3_fixedpoint, axiom: Z3_ast) void;
pub extern fn Z3_fixedpoint_query(c: Z3_context, d: Z3_fixedpoint, query: Z3_ast) Z3_lbool;
pub extern fn Z3_fixedpoint_query_relations(c: Z3_context, d: Z3_fixedpoint, num_relations: c_uint, relations: [*c]const Z3_func_decl) Z3_lbool;
pub extern fn Z3_fixedpoint_get_answer(c: Z3_context, d: Z3_fixedpoint) Z3_ast;
pub extern fn Z3_fixedpoint_get_reason_unknown(c: Z3_context, d: Z3_fixedpoint) Z3_string;
pub extern fn Z3_fixedpoint_update_rule(c: Z3_context, d: Z3_fixedpoint, a: Z3_ast, name: Z3_symbol) void;
pub extern fn Z3_fixedpoint_get_num_levels(c: Z3_context, d: Z3_fixedpoint, pred: Z3_func_decl) c_uint;
pub extern fn Z3_fixedpoint_get_cover_delta(c: Z3_context, d: Z3_fixedpoint, level: c_int, pred: Z3_func_decl) Z3_ast;
pub extern fn Z3_fixedpoint_add_cover(c: Z3_context, d: Z3_fixedpoint, level: c_int, pred: Z3_func_decl, property: Z3_ast) void;
pub extern fn Z3_fixedpoint_get_statistics(c: Z3_context, d: Z3_fixedpoint) Z3_stats;
pub extern fn Z3_fixedpoint_register_relation(c: Z3_context, d: Z3_fixedpoint, f: Z3_func_decl) void;
pub extern fn Z3_fixedpoint_set_predicate_representation(c: Z3_context, d: Z3_fixedpoint, f: Z3_func_decl, num_relations: c_uint, relation_kinds: [*c]const Z3_symbol) void;
pub extern fn Z3_fixedpoint_get_rules(c: Z3_context, f: Z3_fixedpoint) Z3_ast_vector;
pub extern fn Z3_fixedpoint_get_assertions(c: Z3_context, f: Z3_fixedpoint) Z3_ast_vector;
pub extern fn Z3_fixedpoint_set_params(c: Z3_context, f: Z3_fixedpoint, p: Z3_params) void;
pub extern fn Z3_fixedpoint_get_help(c: Z3_context, f: Z3_fixedpoint) Z3_string;
pub extern fn Z3_fixedpoint_get_param_descrs(c: Z3_context, f: Z3_fixedpoint) Z3_param_descrs;
pub extern fn Z3_fixedpoint_to_string(c: Z3_context, f: Z3_fixedpoint, num_queries: c_uint, queries: [*c]Z3_ast) Z3_string;
pub extern fn Z3_fixedpoint_from_string(c: Z3_context, f: Z3_fixedpoint, s: Z3_string) Z3_ast_vector;
pub extern fn Z3_fixedpoint_from_file(c: Z3_context, f: Z3_fixedpoint, s: Z3_string) Z3_ast_vector;
pub const Z3_fixedpoint_reduce_assign_callback_fptr = fn (?*anyopaque, Z3_func_decl, c_uint, [*c]const Z3_ast, c_uint, [*c]const Z3_ast) callconv(.c) void;
pub const Z3_fixedpoint_reduce_app_callback_fptr = fn (?*anyopaque, Z3_func_decl, c_uint, [*c]const Z3_ast, [*c]Z3_ast) callconv(.c) void;
pub extern fn Z3_fixedpoint_init(c: Z3_context, d: Z3_fixedpoint, state: ?*anyopaque) void;
pub extern fn Z3_fixedpoint_set_reduce_assign_callback(c: Z3_context, d: Z3_fixedpoint, cb: ?*const Z3_fixedpoint_reduce_assign_callback_fptr) void;
pub extern fn Z3_fixedpoint_set_reduce_app_callback(c: Z3_context, d: Z3_fixedpoint, cb: ?*const Z3_fixedpoint_reduce_app_callback_fptr) void;
pub const Z3_fixedpoint_new_lemma_eh = ?*const fn (state: ?*anyopaque, lemma: Z3_ast, level: c_uint) callconv(.c) void;
pub const Z3_fixedpoint_predecessor_eh = ?*const fn (state: ?*anyopaque) callconv(.c) void;
pub const Z3_fixedpoint_unfold_eh = ?*const fn (state: ?*anyopaque) callconv(.c) void;
pub extern fn Z3_fixedpoint_add_callback(ctx: Z3_context, f: Z3_fixedpoint, state: ?*anyopaque, new_lemma_eh: Z3_fixedpoint_new_lemma_eh, predecessor_eh: Z3_fixedpoint_predecessor_eh, unfold_eh: Z3_fixedpoint_unfold_eh) void;
pub extern fn Z3_fixedpoint_add_constraint(c: Z3_context, d: Z3_fixedpoint, e: Z3_ast, lvl: c_uint) void;
pub const Z3_model_eh = fn (ctx: ?*anyopaque) callconv(.c) void;
pub extern fn Z3_mk_optimize(c: Z3_context) Z3_optimize;
pub extern fn Z3_optimize_inc_ref(c: Z3_context, d: Z3_optimize) void;
pub extern fn Z3_optimize_dec_ref(c: Z3_context, d: Z3_optimize) void;
pub extern fn Z3_optimize_assert(c: Z3_context, o: Z3_optimize, a: Z3_ast) void;
pub extern fn Z3_optimize_assert_and_track(c: Z3_context, o: Z3_optimize, a: Z3_ast, t: Z3_ast) void;
pub extern fn Z3_optimize_assert_soft(c: Z3_context, o: Z3_optimize, a: Z3_ast, weight: Z3_string, id: Z3_symbol) c_uint;
pub extern fn Z3_optimize_maximize(c: Z3_context, o: Z3_optimize, t: Z3_ast) c_uint;
pub extern fn Z3_optimize_minimize(c: Z3_context, o: Z3_optimize, t: Z3_ast) c_uint;
pub extern fn Z3_optimize_push(c: Z3_context, d: Z3_optimize) void;
pub extern fn Z3_optimize_pop(c: Z3_context, d: Z3_optimize) void;
pub extern fn Z3_optimize_set_initial_value(c: Z3_context, o: Z3_optimize, v: Z3_ast, val: Z3_ast) void;
pub extern fn Z3_optimize_check(c: Z3_context, o: Z3_optimize, num_assumptions: c_uint, assumptions: [*c]const Z3_ast) Z3_lbool;
pub extern fn Z3_optimize_get_reason_unknown(c: Z3_context, d: Z3_optimize) Z3_string;
pub extern fn Z3_optimize_get_model(c: Z3_context, o: Z3_optimize) Z3_model;
pub extern fn Z3_optimize_get_unsat_core(c: Z3_context, o: Z3_optimize) Z3_ast_vector;
pub extern fn Z3_optimize_set_params(c: Z3_context, o: Z3_optimize, p: Z3_params) void;
pub extern fn Z3_optimize_get_param_descrs(c: Z3_context, o: Z3_optimize) Z3_param_descrs;
pub extern fn Z3_optimize_get_lower(c: Z3_context, o: Z3_optimize, idx: c_uint) Z3_ast;
pub extern fn Z3_optimize_get_upper(c: Z3_context, o: Z3_optimize, idx: c_uint) Z3_ast;
pub extern fn Z3_optimize_get_lower_as_vector(c: Z3_context, o: Z3_optimize, idx: c_uint) Z3_ast_vector;
pub extern fn Z3_optimize_get_upper_as_vector(c: Z3_context, o: Z3_optimize, idx: c_uint) Z3_ast_vector;
pub extern fn Z3_optimize_to_string(c: Z3_context, o: Z3_optimize) Z3_string;
pub extern fn Z3_optimize_from_string(c: Z3_context, o: Z3_optimize, s: Z3_string) void;
pub extern fn Z3_optimize_from_file(c: Z3_context, o: Z3_optimize, s: Z3_string) void;
pub extern fn Z3_optimize_get_help(c: Z3_context, t: Z3_optimize) Z3_string;
pub extern fn Z3_optimize_get_statistics(c: Z3_context, d: Z3_optimize) Z3_stats;
pub extern fn Z3_optimize_get_assertions(c: Z3_context, o: Z3_optimize) Z3_ast_vector;
pub extern fn Z3_optimize_get_objectives(c: Z3_context, o: Z3_optimize) Z3_ast_vector;
pub extern fn Z3_optimize_register_model_eh(c: Z3_context, o: Z3_optimize, m: Z3_model, ctx: ?*anyopaque, model_eh: ?*const Z3_model_eh) void;
pub extern fn Z3_mk_fpa_rounding_mode_sort(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_round_nearest_ties_to_even(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_rne(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_round_nearest_ties_to_away(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_rna(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_round_toward_positive(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_rtp(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_round_toward_negative(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_rtn(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_round_toward_zero(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_rtz(c: Z3_context) Z3_ast;
pub extern fn Z3_mk_fpa_sort(c: Z3_context, ebits: c_uint, sbits: c_uint) Z3_sort;
pub extern fn Z3_mk_fpa_sort_half(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_16(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_single(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_32(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_double(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_64(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_quadruple(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_sort_128(c: Z3_context) Z3_sort;
pub extern fn Z3_mk_fpa_nan(c: Z3_context, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_inf(c: Z3_context, s: Z3_sort, negative: bool) Z3_ast;
pub extern fn Z3_mk_fpa_zero(c: Z3_context, s: Z3_sort, negative: bool) Z3_ast;
pub extern fn Z3_mk_fpa_fp(c: Z3_context, sgn: Z3_ast, exp: Z3_ast, sig: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_numeral_float(c: Z3_context, v: f32, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_numeral_double(c: Z3_context, v: f64, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_numeral_int(c: Z3_context, v: c_int, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_numeral_int_uint(c: Z3_context, sgn: bool, exp: c_int, sig: c_uint, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_numeral_int64_uint64(c: Z3_context, sgn: bool, exp: i64, sig: u64, ty: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_abs(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_neg(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_add(c: Z3_context, rm: Z3_ast, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_sub(c: Z3_context, rm: Z3_ast, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_mul(c: Z3_context, rm: Z3_ast, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_div(c: Z3_context, rm: Z3_ast, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_fma(c: Z3_context, rm: Z3_ast, t1: Z3_ast, t2: Z3_ast, t3: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_sqrt(c: Z3_context, rm: Z3_ast, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_rem(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_round_to_integral(c: Z3_context, rm: Z3_ast, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_min(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_max(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_leq(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_lt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_geq(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_gt(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_eq(c: Z3_context, t1: Z3_ast, t2: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_normal(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_subnormal(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_zero(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_infinite(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_nan(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_negative(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_is_positive(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_bv(c: Z3_context, bv: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_float(c: Z3_context, rm: Z3_ast, t: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_real(c: Z3_context, rm: Z3_ast, t: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_signed(c: Z3_context, rm: Z3_ast, t: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_unsigned(c: Z3_context, rm: Z3_ast, t: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_mk_fpa_to_ubv(c: Z3_context, rm: Z3_ast, t: Z3_ast, sz: c_uint) Z3_ast;
pub extern fn Z3_mk_fpa_to_sbv(c: Z3_context, rm: Z3_ast, t: Z3_ast, sz: c_uint) Z3_ast;
pub extern fn Z3_mk_fpa_to_real(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_fpa_get_ebits(c: Z3_context, s: Z3_sort) c_uint;
pub extern fn Z3_fpa_get_sbits(c: Z3_context, s: Z3_sort) c_uint;
pub extern fn Z3_fpa_is_numeral_nan(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_inf(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_zero(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_normal(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_subnormal(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_positive(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_is_numeral_negative(c: Z3_context, t: Z3_ast) bool;
pub extern fn Z3_fpa_get_numeral_sign_bv(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_fpa_get_numeral_significand_bv(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_fpa_get_numeral_sign(c: Z3_context, t: Z3_ast, sgn: [*c]c_int) bool;
pub extern fn Z3_fpa_get_numeral_significand_string(c: Z3_context, t: Z3_ast) Z3_string;
pub extern fn Z3_fpa_get_numeral_significand_uint64(c: Z3_context, t: Z3_ast, n: [*c]u64) bool;
pub extern fn Z3_fpa_get_numeral_exponent_string(c: Z3_context, t: Z3_ast, biased: bool) Z3_string;
pub extern fn Z3_fpa_get_numeral_exponent_int64(c: Z3_context, t: Z3_ast, n: [*c]i64, biased: bool) bool;
pub extern fn Z3_fpa_get_numeral_exponent_bv(c: Z3_context, t: Z3_ast, biased: bool) Z3_ast;
pub extern fn Z3_mk_fpa_to_ieee_bv(c: Z3_context, t: Z3_ast) Z3_ast;
pub extern fn Z3_mk_fpa_to_fp_int_real(c: Z3_context, rm: Z3_ast, exp: Z3_ast, sig: Z3_ast, s: Z3_sort) Z3_ast;
pub extern fn Z3_fixedpoint_query_from_lvl(c: Z3_context, d: Z3_fixedpoint, query: Z3_ast, lvl: c_uint) Z3_lbool;
pub extern fn Z3_fixedpoint_get_ground_sat_answer(c: Z3_context, d: Z3_fixedpoint) Z3_ast;
pub extern fn Z3_fixedpoint_get_rules_along_trace(c: Z3_context, d: Z3_fixedpoint) Z3_ast_vector;
pub extern fn Z3_fixedpoint_get_rule_names_along_trace(c: Z3_context, d: Z3_fixedpoint) Z3_symbol;
pub extern fn Z3_fixedpoint_add_invariant(c: Z3_context, d: Z3_fixedpoint, pred: Z3_func_decl, property: Z3_ast) void;
pub extern fn Z3_fixedpoint_get_reachable(c: Z3_context, d: Z3_fixedpoint, pred: Z3_func_decl) Z3_ast;
pub extern fn Z3_qe_model_project(c: Z3_context, m: Z3_model, num_bounds: c_uint, bound: [*c]const Z3_app, body: Z3_ast) Z3_ast;
pub extern fn Z3_qe_model_project_skolem(c: Z3_context, m: Z3_model, num_bounds: c_uint, bound: [*c]const Z3_app, body: Z3_ast, map: Z3_ast_map) Z3_ast;
pub extern fn Z3_qe_model_project_with_witness(c: Z3_context, m: Z3_model, num_bounds: c_uint, bound: [*c]const Z3_app, body: Z3_ast, map: Z3_ast_map) Z3_ast;
pub extern fn Z3_model_extrapolate(c: Z3_context, m: Z3_model, fml: Z3_ast) Z3_ast;
pub extern fn Z3_qe_lite(c: Z3_context, vars: Z3_ast_vector, body: Z3_ast) Z3_ast;

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_CLANG__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const __APPLE__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __aarch64__ = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_PAUTH = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __MACH__ = @as(c_int, 1);
pub const __nonnull = @compileError("unable to translate C expr: unexpected token '_Nonnull'"); // <builtin>:54:9
pub const __null_unspecified = @compileError("unable to translate C expr: unexpected token '_Null_unspecified'"); // <builtin>:55:9
pub const __nullable = @compileError("unable to translate C expr: unexpected token '_Nullable'"); // <builtin>:56:9
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:117:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:119:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:140:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:162:9
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:170:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "lld";
pub const INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_LEAST64_FMTo__ = "llo";
pub const UINT_LEAST64_FMTu__ = "llu";
pub const UINT_LEAST64_FMTx__ = "llx";
pub const UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "lld";
pub const INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_FAST64_FMTo__ = "llo";
pub const UINT_FAST64_FMTu__ = "llu";
pub const UINT_FAST64_FMTx__ = "llx";
pub const UINT_FAST64_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _SYS__TYPES_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_push_hidden = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:203:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:204:9
pub const __exported_hidden = @compileError("unable to translate macro: undefined identifier `__private_extern__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:205:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:223:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:229:10
pub inline fn __deprecated_enum_msg(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub inline fn __kpi_deprecated(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:244:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:266:9
pub const __disable_tail_calls = "";
pub const __not_tail_called = "";
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:322:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:332:9
pub inline fn __swift_unavailable_from_async(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub const __swift_nonisolated = "";
pub const __swift_nonisolated_unsafe = "";
pub const __abortlike = __dead2 ++ __cold;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:383:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:392:10
pub const __unreachable_ok_push = "";
pub const __unreachable_ok_pop = "";
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:429:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:431:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:433:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:435:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:438:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:441:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:445:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:449:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:453:9
pub inline fn __FBSDID(s: anytype) void {
    _ = &s;
    return;
}
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:462:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:466:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:470:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:479:9
pub const __alloc_size = @compileError("unable to translate macro: undefined identifier `alloc_size`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:500:9
pub const __has_safe_buffers = @as(c_int, 0);
pub const __unsafe_buffer_usage = "";
pub const __unsafe_buffer_usage_begin = "";
pub const __unsafe_buffer_usage_end = "";
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:790:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:791:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:792:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:793:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:794:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:796:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:797:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:798:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:799:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:800:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:802:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:803:9
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_19_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_16_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:813:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:876:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:974:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:988:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub inline fn __counted_by(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __counted_by_or_null(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __sized_by(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __sized_by_or_null(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __ended_by(E: anytype) void {
    _ = &E;
    return;
}
pub inline fn __terminated_by(T: anytype) void {
    _ = &T;
    return;
}
pub const __null_terminated = "";
pub inline fn __ptrcheck_abi_assume_single() void {
    return;
}
pub inline fn __ptrcheck_abi_assume_unsafe_indexable() void {
    return;
}
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = __helpers.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = __helpers.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_from_indexable(T: anytype, P: anytype) @TypeOf(P) {
    _ = &T;
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_from_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub inline fn __ptrcheck_unavailable_r(REPLACEMENT: anytype) void {
    _ = &REPLACEMENT;
    return;
}
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1073:9
pub const __enum_open = "";
pub const __enum_closed = "";
pub const __enum_options = "";
pub const __enum_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1106:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1108:9
pub const __options_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1110:9
pub const __options_closed_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1112:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const __xnu_data_size = "";
pub const __xnu_returns_data_pointer = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:97:9
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = __helpers.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.ULL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -__helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const Z3_API = @compileError("unable to translate macro: undefined identifier `visibility`"); // /opt/homebrew/Cellar/z3/4.15.4/include/z3_macros.h:10:11
pub const DEFINE_TYPE = @compileError("unable to translate macro: undefined identifier `_`"); // /opt/homebrew/Cellar/z3/4.15.4/include/z3_macros.h:17:9
pub const Z3_DECLARE_CLOSURE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /opt/homebrew/Cellar/z3/4.15.4/include/z3_macros.h:21:9
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const _Z3_symbol = struct__Z3_symbol;
pub const _Z3_config = struct__Z3_config;
pub const _Z3_context = struct__Z3_context;
pub const _Z3_sort = struct__Z3_sort;
pub const _Z3_func_decl = struct__Z3_func_decl;
pub const _Z3_ast = struct__Z3_ast;
pub const _Z3_app = struct__Z3_app;
pub const _Z3_pattern = struct__Z3_pattern;
pub const _Z3_model = struct__Z3_model;
pub const _Z3_constructor = struct__Z3_constructor;
pub const _Z3_constructor_list = struct__Z3_constructor_list;
pub const _Z3_params = struct__Z3_params;
pub const _Z3_param_descrs = struct__Z3_param_descrs;
pub const _Z3_parser_context = struct__Z3_parser_context;
pub const _Z3_goal = struct__Z3_goal;
pub const _Z3_tactic = struct__Z3_tactic;
pub const _Z3_simplifier = struct__Z3_simplifier;
pub const _Z3_probe = struct__Z3_probe;
pub const _Z3_stats = struct__Z3_stats;
pub const _Z3_solver = struct__Z3_solver;
pub const _Z3_solver_callback = struct__Z3_solver_callback;
pub const _Z3_ast_vector = struct__Z3_ast_vector;
pub const _Z3_ast_map = struct__Z3_ast_map;
pub const _Z3_apply_result = struct__Z3_apply_result;
pub const _Z3_func_interp = struct__Z3_func_interp;
pub const _Z3_func_entry = struct__Z3_func_entry;
pub const _Z3_fixedpoint = struct__Z3_fixedpoint;
pub const _Z3_optimize = struct__Z3_optimize;
pub const _Z3_rcf_num = struct__Z3_rcf_num;
