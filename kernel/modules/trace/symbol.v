module trace

struct Symbol {
	address u64
	name    string
}

const symbol_table = [
	Symbol{0xffffffff80200020, '_us32_gt'},
	Symbol{0xffffffff80200030, '_us64_gt'},
	Symbol{0xffffffff80200040, '_us64_eq'},
	Symbol{0xffffffff80200060, '_us64_lt'},
	Symbol{0xffffffff80200080, '_wymum'},
	Symbol{0xffffffff80200090, '_wymix'},
	Symbol{0xffffffff802000c0, '_wyr3'},
	Symbol{0xffffffff802000e0, 'I_None___to_Interface_IError'},
	Symbol{0xffffffff80200100, 'I_Error_to_Interface_IError'},
	Symbol{0xffffffff80200120, 'I_fs__DevTmpFS_to_Interface_fs__FileSystem'},
	Symbol{0xffffffff80200130, 'I_fs__TmpFS_to_Interface_fs__FileSystem'},
	Symbol{0xffffffff80200140, 'I_dev__console__Console_to_Interface_resource__Resource'},
	Symbol{0xffffffff80200170, 'vinit_string_literals'},
	Symbol{0xffffffff802001c0, 'u8_alias_eq'},
	Symbol{0xffffffff802001d0, 'math__bits__mul_64'},
	Symbol{0xffffffff80200240, 'strconv__f32_to_decimal_exact_int'},
	Symbol{0xffffffff802002f0, 'strconv__f64_to_decimal_exact_int'},
	Symbol{0xffffffff802003c0, 'strconv__bool_to_u32'},
	Symbol{0xffffffff802003d0, 'strconv__bool_to_u64'},
	Symbol{0xffffffff802003e0, 'strconv__get_string_special'},
	Symbol{0xffffffff80200450, 'strconv__pow5_factor_32'},
	Symbol{0xffffffff802004a0, 'strconv__multiple_of_power_of_five_32'},
	Symbol{0xffffffff802004c0, 'strconv__pow5_factor_64'},
	Symbol{0xffffffff80200510, 'strconv__multiple_of_power_of_five_64'},
	Symbol{0xffffffff80200530, 'strconv__dec_digits'},
	Symbol{0xffffffff802006a0, 'isnil'},
	Symbol{0xffffffff802006b0, 'f32_abs'},
	Symbol{0xffffffff802006c0, 'f64_abs'},
	Symbol{0xffffffff802006c0, 'fabs32'},
	Symbol{0xffffffff802006c0, 'fabs64'},
	Symbol{0xffffffff802006d0, 'DenseArray_has_index'},
	Symbol{0xffffffff802006f0, 'map_key_to_index'},
	Symbol{0xffffffff80200730, 'byte_vstring_with_len'},
	Symbol{0xffffffff80200730, 'byteptr_vstring_with_len'},
	Symbol{0xffffffff80200740, 'abs64'},
	Symbol{0xffffffff80200750, 'acpi__use_xsdt'},
	Symbol{0xffffffff80200770, 'stat__isreg'},
	Symbol{0xffffffff80200780, 'stat__isdir'},
	Symbol{0xffffffff80200790, 'trace__address'},
	Symbol{0xffffffff80200850, 'katomic__cas_T_u64'},
	Symbol{0xffffffff80200860, 'katomic__inc_T_u64'},
	Symbol{0xffffffff80200870, 'katomic__store_T_bool'},
	Symbol{0xffffffff80200880, 'katomic__store_T_u64'},
	Symbol{0xffffffff80200890, 'katomic__load_T_u64'},
	Symbol{0xffffffff802008a0, 'katomic__load_T_bool'},
	Symbol{0xffffffff802008a0, 'katomic__load_T_byte'},
	Symbol{0xffffffff802008b0, 'x86__msr__rdmsr'},
	Symbol{0xffffffff802008c0, 'x86__msr__wrmsr'},
	Symbol{0xffffffff802008d0, 'x86__kio__inb'},
	Symbol{0xffffffff802008e0, 'x86__kio__mmind'},
	Symbol{0xffffffff802008f0, 'x86__kio__mmoutd'},
	Symbol{0xffffffff80200900, 'errno__get'},
	Symbol{0xffffffff80200910, 'klock__Lock_release'},
	Symbol{0xffffffff80200920, 'x86__cpu__set_user_gs'},
	Symbol{0xffffffff80200930, 'x86__cpu__set_user_fs'},
	Symbol{0xffffffff80200940, 'x86__cpu__get_user_gs'},
	Symbol{0xffffffff80200950, 'x86__cpu__get_user_fs'},
	Symbol{0xffffffff80200960, 'x86__cpu__read_cr0'},
	Symbol{0xffffffff80200970, 'x86__cpu__write_cr0'},
	Symbol{0xffffffff80200980, 'x86__cpu__read_cr2'},
	Symbol{0xffffffff80200990, 'x86__cpu__read_cr3'},
	Symbol{0xffffffff802009a0, 'x86__cpu__write_cr3'},
	Symbol{0xffffffff802009b0, 'x86__cpu__read_cr4'},
	Symbol{0xffffffff802009c0, 'x86__cpu__write_cr4'},
	Symbol{0xffffffff802009d0, 'x86__cpu__xsave'},
	Symbol{0xffffffff802009e0, 'x86__cpu__xrstor'},
	Symbol{0xffffffff802009f0, 'x86__cpu__fxsave'},
	Symbol{0xffffffff80200a00, 'x86__cpu__fxrstor'},
	Symbol{0xffffffff80200a10, 'x86__cpu__set_id'},
	Symbol{0xffffffff80200a20, 'x86__cpu__get_id'},
	Symbol{0xffffffff80200a30, 'stivale2__get_tag'},
	Symbol{0xffffffff80200a50, 'stivale2__terminal_init'},
	Symbol{0xffffffff80200a80, 'x86__gdt__reload'},
	Symbol{0xffffffff80200ad0, 'x86__gdt__initialise'},
	Symbol{0xffffffff80200b90, 'x86__idt__reload'},
	Symbol{0xffffffff80200bc0, 'resource__create_dev_id'},
	Symbol{0xffffffff80200be0, 'lib__bittest'},
	Symbol{0xffffffff80200c00, 'lib__bitset'},
	Symbol{0xffffffff80200c20, 'lib__bitreset'},
	Symbol{0xffffffff80200c40, 'lib__div_roundup_T_u64'},
	Symbol{0xffffffff80200c50, 'lib__align_up'},
	Symbol{0xffffffff80200c60, 'lib__align_down'},
	Symbol{0xffffffff80200c70, 'x86__apic__lapic_read'},
	Symbol{0xffffffff80200ca0, 'x86__apic__lapic_write'},
	Symbol{0xffffffff80200cd0, 'x86__apic__lapic_timer_stop'},
	Symbol{0xffffffff80200cf0, 'x86__apic__lapic_eoi'},
	Symbol{0xffffffff80200d00, 'x86__apic__lapic_send_ipi'},
	Symbol{0xffffffff80200d30, 'syscall__ud_entry'},
	Symbol{0xffffffff80200d90, 'syscall__sysenter_entry'},
	Symbol{0xffffffff80200e00, 'memory__inner_alloc'},
	Symbol{0xffffffff80200ec0, 'fs__DevTmpFS_populate'},
	Symbol{0xffffffff80200ed0, 'fs__TmpFS_populate'},
	Symbol{0xffffffff80200ee0, 'dev__console__is_printable'},
	Symbol{0xffffffff80200ef0, '_strnlen_s'},
	Symbol{0xffffffff80200f20, '_is_digit'},
	Symbol{0xffffffff80200f30, '_atoi'},
	Symbol{0xffffffff80200f70, 'memcpy'},
	Symbol{0xffffffff80200fa0, '_wyr4'},
	Symbol{0xffffffff80200fc0, '_wyr8'},
	Symbol{0xffffffff80200fe0, 'opt_ok'},
	Symbol{0xffffffff80201030, 'prepare_interrupt_thunks'},
	Symbol{0xffffffff802010e0, 'x86__idt__initialise'},
	Symbol{0xffffffff802010f0, 'memcmp'},
	Symbol{0xffffffff80201130, 'strlen'},
	Symbol{0xffffffff80201160, 'vstrlen'},
	Symbol{0xffffffff80201170, 'byteptr_vstring'},
	Symbol{0xffffffff80201180, 'x86__apic__lapic_enable.constprop.0'},
	Symbol{0xffffffff802011a0, 'x86__cpu__cpuid.constprop.0'},
	Symbol{0xffffffff802011f0, 'x86__cpu__wrxcr.constprop.0'},
	Symbol{0xffffffff80201200, 'x86__kio__outb.constprop.0'},
	Symbol{0xffffffff80201210, 'x86__apic__pit_current_count'},
	Symbol{0xffffffff80201240, 'tos3.constprop.0'},
	Symbol{0xffffffff80201260, 'tos5.constprop.0'},
	Symbol{0xffffffff80201270, 'vcommithash'},
	Symbol{0xffffffff80201280, 'memory__Pagemap_switch_to.constprop.0'},
	Symbol{0xffffffff80201290, 'array_trim.constprop.0'},
	Symbol{0xffffffff802012a0, 'katomic__cas_T_bool.constprop.0'},
	Symbol{0xffffffff802012b0, 'klock__Lock_test_and_acquire'},
	Symbol{0xffffffff802012e0, '_out_rev.constprop.0'},
	Symbol{0xffffffff802013e0, '_ntoa_format.constprop.0'},
	Symbol{0xffffffff802016c0, '_ntoa_long.constprop.0'},
	Symbol{0xffffffff80201790, '_vsnprintf.constprop.0'},
	Symbol{0xffffffff80202230, 'printf'},
	Symbol{0xffffffff80202290, 'trace__address_print'},
	Symbol{0xffffffff802022d0, 'trace__stacktrace'},
	Symbol{0xffffffff80202330, 'klock__Lock_acquire'},
	Symbol{0xffffffff802023f0, 'stivale2__terminal_printc'},
	Symbol{0xffffffff80202490, '_putchar'},
	Symbol{0xffffffff802024c0, '_out_char'},
	Symbol{0xffffffff802024e0, 'x86__gdt__load_tss'},
	Symbol{0xffffffff80202570, 'x86__idt__allocate_vector'},
	Symbol{0xffffffff802025b0, 'memory__pmm_free'},
	Symbol{0xffffffff80202610, 'memory__free'},
	Symbol{0xffffffff80202630, 'free'},
	Symbol{0xffffffff80202640, 'v_free'},
	Symbol{0xffffffff80202650, 'fs__DevTmpFSResource_read'},
	Symbol{0xffffffff802026c0, 'fs__TmpFSResource_read'},
	Symbol{0xffffffff80202730, 'string_free'},
	Symbol{0xffffffff80202780, 'map_free_string'},
	Symbol{0xffffffff80202790, 'I_voidptr_to_Interface_resource__Resource.constprop.0'},
	Symbol{0xffffffff802027b0, 'I_resource__Dummy_to_Interface_resource__Resource.constprop.0'},
	Symbol{0xffffffff802027e0, 'I_fs__TmpFSResource_to_Interface_resource__Resource.constprop.0'},
	Symbol{0xffffffff80202810, 'I_fs__DevTmpFSResource_to_Interface_resource__Resource.constprop.0'},
	Symbol{0xffffffff80202840, 'resource__Dummy_read.constprop.0'},
	Symbol{0xffffffff80202850, 'resource__Dummy_read_Interface_resource__Resource_method_wrapper'},
	Symbol{0xffffffff80202860, 'resource__Dummy_write_Interface_resource__Resource_method_wrapper'},
	Symbol{0xffffffff80202870, 'wyhash.constprop.0'},
	Symbol{0xffffffff80202ab0, 'map_hash_string'},
	Symbol{0xffffffff80202ac0, '_us32_lt.constprop.0'},
	Symbol{0xffffffff80202ad0, 'memmove.isra.0'},
	Symbol{0xffffffff80202b20, 'memset.isra.0'},
	Symbol{0xffffffff80202b40, 'memory__pmm_init'},
	Symbol{0xffffffff80202c90, 'initramfs__octal_to_int.isra.0'},
	Symbol{0xffffffff80202cc0, 'lib__kpanic.isra.0'},
	Symbol{0xffffffff80202cf0, 'memory__pmm_alloc'},
	Symbol{0xffffffff80202da0, 'memory__malloc'},
	Symbol{0xffffffff80202df0, 'memory__realloc'},
	Symbol{0xffffffff80202ec0, 'fs__DevTmpFSResource_write'},
	Symbol{0xffffffff80202f90, 'fs__TmpFSResource_write'},
	Symbol{0xffffffff80203060, 'realloc'},
	Symbol{0xffffffff80203070, 'malloc'},
	Symbol{0xffffffff80203080, 'calloc.constprop.0'},
	Symbol{0xffffffff80203090, 'memory__get_next_level'},
	Symbol{0xffffffff802030e0, 'memory__Pagemap_map_page'},
	Symbol{0xffffffff80203170, 'stivale2__terminal_print.isra.0'},
	Symbol{0xffffffff80203180, 'dev__console__Console_write'},
	Symbol{0xffffffff802031b0, 'katomic__dec_T_u64.isra.0'},
	Symbol{0xffffffff802031c0, 'utf8_str_visible_length.isra.0'},
	Symbol{0xffffffff80203420, 'map_meta_less.isra.0'},
	Symbol{0xffffffff80203450, 'DenseArray_value.isra.0'},
	Symbol{0xffffffff80203460, 'DenseArray_key.isra.0'},
	Symbol{0xffffffff80203470, 'map_get.constprop.0'},
	Symbol{0xffffffff80203540, 'map_exists'},
	Symbol{0xffffffff802035e0, 'Map_string_fs__VFSNode_ptr_map_eq'},
	Symbol{0xffffffff802036c0, 'fs__VFSNode_struct_eq'},
	Symbol{0xffffffff802037a0, 'fast_string_eq.isra.0'},
	Symbol{0xffffffff802037d0, 'map_eq_string'},
	Symbol{0xffffffff802037f0, 'array_free.isra.0'},
	Symbol{0xffffffff80203800, 'array_set_unsafe.isra.0'},
	Symbol{0xffffffff80203820, 'array_get_unsafe.isra.0'},
	Symbol{0xffffffff80203830, 'strings__Builder_free.isra.0'},
	Symbol{0xffffffff80203840, 'strings__Builder_write_string.isra.0'},
	Symbol{0xffffffff80203850, 'StrIntpData_get_fmt_format'},
	Symbol{0xffffffff80204170, 'str_intp'},
	Symbol{0xffffffff80204230, 'v_panic.isra.0'},
	Symbol{0xffffffff802042c0, 'string_at.isra.0'},
	Symbol{0xffffffff80204350, 'lib__kprint.isra.0'},
	Symbol{0xffffffff802043c0, 'string__eq.constprop.0.isra.0'},
	Symbol{0xffffffff80204420, 'strconv__assert1.constprop.0.isra.0'},
	Symbol{0xffffffff80204440, 'strconv__mul_shift_32'},
	Symbol{0xffffffff80204490, 'strconv__log10_pow2'},
	Symbol{0xffffffff802044e0, 'strconv__log10_pow5'},
	Symbol{0xffffffff80204530, 'strconv__pow5_bits'},
	Symbol{0xffffffff80204580, 'strconv__shift_right_128'},
	Symbol{0xffffffff802045e0, 'strconv__mul_shift_64'},
	Symbol{0xffffffff80204640, 'memory__vmm_init'},
	Symbol{0xffffffff80204820, 'tos2'},
	Symbol{0xffffffff80204850, 'v_fixed_index'},
	Symbol{0xffffffff802048f0, 'x86__idt__set_ist'},
	Symbol{0xffffffff80204920, 'x86__idt__register_handler'},
	Symbol{0xffffffff80204980, 'event__Event_get_listener'},
	Symbol{0xffffffff80204a20, 'x86__isr__initialise'},
	Symbol{0xffffffff80204b40, 'sched__dequeue_thread.isra.0'},
	Symbol{0xffffffff80204bc0, 'sched__enqueue_thread.isra.0'},
	Symbol{0xffffffff80204ca0, 'event__Event_trigger'},
	Symbol{0xffffffff80204de0, 'x86__isr__generic_isr'},
	Symbol{0xffffffff80204e20, 'realloc_data'},
	Symbol{0xffffffff80204f10, 'DenseArray_expand'},
	Symbol{0xffffffff80204ff0, 'map_ensure_extra_metas'},
	Symbol{0xffffffff80205080, 'map_meta_greater'},
	Symbol{0xffffffff802050e0, 'v_realloc'},
	Symbol{0xffffffff80205160, 'map_rehash.constprop.0'},
	Symbol{0xffffffff80205220, 'malloc_noscan'},
	Symbol{0xffffffff80205220, 'v_malloc'},
	Symbol{0xffffffff802052c0, 'byte_ascii_str'},
	Symbol{0xffffffff802052f0, 'string__plus.isra.0'},
	Symbol{0xffffffff80205390, 'strconv__format_uint'},
	Symbol{0xffffffff80205520, 'strconv__format_int'},
	Symbol{0xffffffff80205770, 'string_clone.isra.0'},
	Symbol{0xffffffff802057d0, 'tos_clone'},
	Symbol{0xffffffff802057f0, 'cstring_to_vstring'},
	Symbol{0xffffffff80205800, 'lib__kpanicc'},
	Symbol{0xffffffff80205820, 'exit.constprop.0'},
	Symbol{0xffffffff80205830, 'lib__kprintc'},
	Symbol{0xffffffff80205850, 'write.constprop.0.isra.0'},
	Symbol{0xffffffff80205860, 'eprint.constprop.0.isra.0'},
	Symbol{0xffffffff80205890, 'println.isra.0'},
	Symbol{0xffffffff802058e0, 'acpi__find_sdt.constprop.0'},
	Symbol{0xffffffff80205ab0, 'print.isra.0'},
	Symbol{0xffffffff80205ac0, 'dev__console__add_to_buf_char'},
	Symbol{0xffffffff80205cd0, 'dev__console__add_to_buf.constprop.0'},
	Symbol{0xffffffff80205cf0, 'eprintln.isra.0'},
	Symbol{0xffffffff80205d30, 'lib__syscall_kprint'},
	Symbol{0xffffffff80205d60, 'map_clone_string'},
	Symbol{0xffffffff80205d90, 'new_dense_array.constprop.0'},
	Symbol{0xffffffff80205df0, 'tos'},
	Symbol{0xffffffff80205e10, 'utf32_to_str_no_malloc'},
	Symbol{0xffffffff80205f30, 'utf32_to_str'},
	Symbol{0xffffffff80205f60, 'i64_str'},
	Symbol{0xffffffff80206060, 'u64_str'},
	Symbol{0xffffffff80206170, 'string_to_upper.isra.0'},
	Symbol{0xffffffff802061d0, 'strconv__remove_tail_zeros.isra.0'},
	Symbol{0xffffffff80206390, 'vcalloc'},
	Symbol{0xffffffff802063c0, '__new_array_with_default'},
	Symbol{0xffffffff80206450, 'strings__new_builder'},
	Symbol{0xffffffff80206480, 'memory__new_pagemap'},
	Symbol{0xffffffff80206540, 'strconv__Dec32_get_string_32.constprop.0'},
	Symbol{0xffffffff802067d0, 'strconv__Dec64_get_string_64.isra.0'},
	Symbol{0xffffffff80206a90, 'new_array_from_c_array'},
	Symbol{0xffffffff80206b00, 'array_ensure_cap'},
	Symbol{0xffffffff80206b80, 'array_push'},
	Symbol{0xffffffff80206bc0, 'strings__Builder_write_b'},
	Symbol{0xffffffff80206be0, 'strconv__format_str_sb.isra.0'},
	Symbol{0xffffffff80206c90, 'acpi__madt_init'},
	Symbol{0xffffffff80207030, 'acpi__init'},
	Symbol{0xffffffff802072b0, 'array_clone_to_depth'},
	Symbol{0xffffffff802073f0, 'array_clone'},
	Symbol{0xffffffff80207410, 'array_push_many'},
	Symbol{0xffffffff80207500, 'strings__Builder_write_ptr'},
	Symbol{0xffffffff80207510, 'strconv__format_dec_sb.isra.0'},
	Symbol{0xffffffff80207750, 'vcalloc_noscan'},
	Symbol{0xffffffff80207760, 'new_map.constprop.0'},
	Symbol{0xffffffff80207850, 'memdup'},
	Symbol{0xffffffff80207890, 'strings__Builder_str'},
	Symbol{0xffffffff802078f0, 'fs__DevTmpFS_instantiate'},
	Symbol{0xffffffff80207930, 'fs__TmpFS_instantiate'},
	Symbol{0xffffffff80207980, 'fs__create_node'},
	Symbol{0xffffffff802079f0, 'fs__DevTmpFS_create'},
	Symbol{0xffffffff80207ae0, 'fs__DevTmpFS_mount'},
	Symbol{0xffffffff80207b40, 'fs__TmpFS_create'},
	Symbol{0xffffffff80207c30, 'fs__TmpFS_mount'},
	Symbol{0xffffffff80207c60, '_vinit.constprop.0'},
	Symbol{0xffffffff8020d820, 'sched__new_process.constprop.0'},
	Symbol{0xffffffff8020d8e0, 'v_error.constprop.0'},
	Symbol{0xffffffff8020d920, 'u64_to_hex_no_leading_zeros.constprop.0'},
	Symbol{0xffffffff8020d9d0, 'u64_hex'},
	Symbol{0xffffffff8020da00, 'map_cached_rehash'},
	Symbol{0xffffffff8020dab0, 'map_expand'},
	Symbol{0xffffffff8020db00, 'map_set'},
	Symbol{0xffffffff8020dc50, 'fs__initialise'},
	Symbol{0xffffffff8020de40, 'map_get_and_set.constprop.0'},
	Symbol{0xffffffff8020df10, 'fs__devtmpfs_add_device.constprop.0'},
	Symbol{0xffffffff8020e0b0, '__new_array.constprop.0'},
	Symbol{0xffffffff8020e0f0, 'sched__initialise'},
	Symbol{0xffffffff8020e240, 'array_set.isra.0'},
	Symbol{0xffffffff8020e2f0, 'strconv__fxx_to_str_l_parse'},
	Symbol{0xffffffff8020e7d0, 'array_get.isra.0'},
	Symbol{0xffffffff8020e880, 'fs__path2node.isra.0'},
	Symbol{0xffffffff8020ed10, 'fs__get_node.isra.0'},
	Symbol{0xffffffff8020edf0, 'fs__mount.constprop.0.isra.0'},
	Symbol{0xffffffff8020f2a0, 'fs__internal_create'},
	Symbol{0xffffffff8020f360, 'fs__create'},
	Symbol{0xffffffff8020f3c0, 'initramfs__init'},
	Symbol{0xffffffff8020f5d0, 'sched__new_kernel_thread.constprop.0.isra.0'},
	Symbol{0xffffffff8020f7d0, 'dev__console__initialise'},
	Symbol{0xffffffff8020f840, 'x86__apic__io_apic_read.constprop.0'},
	Symbol{0xffffffff8020f890, 'x86__apic__io_apic_gsi_count'},
	Symbol{0xffffffff8020f8b0, 'x86__apic__io_apic_from_gsi'},
	Symbol{0xffffffff8020f950, 'strconv__fxx_to_str_l_parse_no_dot'},
	Symbol{0xffffffff8020fe60, 'memory__mmap__addr2range'},
	Symbol{0xffffffff8020ffb0, 'memory__mmap__map_page_in_range'},
	Symbol{0xffffffff80210060, 'memory__mmap__map_range.constprop.0'},
	Symbol{0xffffffff80210180, 'elf__load'},
	Symbol{0xffffffff80210770, 'sched__new_user_thread.constprop.0.isra.0'},
	Symbol{0xffffffff80210c30, 'userland__start_program.constprop.0.isra.0'},
	Symbol{0xffffffff80211390, 'x86__apic__io_apic_write'},
	Symbol{0xffffffff802113f0, 'x86__apic__io_apic_set_gsi_redirect'},
	Symbol{0xffffffff802114b0, 'x86__apic__io_apic_set_irq_redirect.constprop.0'},
	Symbol{0xffffffff80211600, 'x86__cpu__local__current'},
	Symbol{0xffffffff80211630, 'x86__apic__lapic_timer_calibrate'},
	Symbol{0xffffffff802116d0, 'x86__apic__lapic_timer_oneshot'},
	Symbol{0xffffffff80211730, 'sched__await'},
	Symbol{0xffffffff80211750, 'x86__cpu__initialisation__initialise'},
	Symbol{0xffffffff80211ae0, 'x86__smp__initialise'},
	Symbol{0xffffffff80211d00, 'proc__current_thread'},
	Symbol{0xffffffff80211d30, 'memory__mmap__mmap'},
	Symbol{0xffffffff80211ee0, 'memory__mmap__syscall_mmap'},
	Symbol{0xffffffff80211f80, 'memory__mmap__pf_handler.constprop.0'},
	Symbol{0xffffffff80212090, 'sched__yield'},
	Symbol{0xffffffff802120e0, 'sched__get_next_thread'},
	Symbol{0xffffffff80212170, 'sched__dequeue_and_yield'},
	Symbol{0xffffffff80212190, 'main__kmain_thread'},
	Symbol{0xffffffff802123d0, 'event__await.constprop.0.isra.0'},
	Symbol{0xffffffff802125c0, 'dev__console__Console_read'},
	Symbol{0xffffffff802127a0, 'dev__console__keyboard_handler'},
	Symbol{0xffffffff80212b10, 'sched__scheduler_isr'},
	Symbol{0xffffffff80212d10, 'x86__isr__exception_handler'},
	Symbol{0xffffffff80212e70, 'x86__isr__ud_handler'},
	Symbol{0xffffffff80212ea0, 'x86__isr__pf_handler'},
	Symbol{0xffffffff80212ed0, 'strconv__mul_pow5_div_pow2'},
	Symbol{0xffffffff80212f10, 'strconv__mul_pow5_invdiv_pow2'},
	Symbol{0xffffffff80212f50, 'math__bits__trailing_zeros_64'},
	Symbol{0xffffffff80212fa0, 'strconv__multiple_of_power_of_two_64'},
	Symbol{0xffffffff80212fc0, 'strconv__f64_to_decimal'},
	Symbol{0xffffffff80213630, 'strconv__f64_to_str'},
	Symbol{0xffffffff80213710, 'strconv__ftoa_64'},
	Symbol{0xffffffff80213720, 'strconv__f64_to_str_lnd1'},
	Symbol{0xffffffff80213b80, 'strconv__format_fl.isra.0'},
	Symbol{0xffffffff80213e80, 'strconv__f64_to_str_l'},
	Symbol{0xffffffff80213ee0, 'f64_str'},
	Symbol{0xffffffff80213f50, 'strconv__f64_to_str_l_no_dot'},
	Symbol{0xffffffff80213fb0, 'f64_strg'},
	Symbol{0xffffffff80214000, 'strconv__f64_to_str_pad'},
	Symbol{0xffffffff802140e0, 'strconv__format_es.isra.0'},
	Symbol{0xffffffff802143a0, 'math__bits__trailing_zeros_32'},
	Symbol{0xffffffff802143e0, 'strconv__multiple_of_power_of_two_32'},
	Symbol{0xffffffff80214400, 'strconv__f32_to_decimal'},
	Symbol{0xffffffff80214a00, 'strconv__f32_to_str'},
	Symbol{0xffffffff80214ac0, 'strconv__ftoa_32'},
	Symbol{0xffffffff80214ad0, 'strconv__f32_to_str_l'},
	Symbol{0xffffffff80214b30, 'f32_str'},
	Symbol{0xffffffff80214ba0, 'strconv__f32_to_str_l_no_dot'},
	Symbol{0xffffffff80214c00, 'f32_strg'},
	Symbol{0xffffffff80214c50, 'main__kmain'},
	Symbol{0xffffffff80214d40, 'interrupt_thunk'},
	Symbol{0xffffffff80214d40, 'interrupt_thunk_begin'},
	Symbol{0xffffffff80214d6f, 'interrupt_thunk_number'},
	Symbol{0xffffffff80214d75, 'interrupt_thunk_offset'},
	Symbol{0xffffffff80214da2, 'interrupt_thunk_end'},
	Symbol{0xffffffff80214da2, 'interrupt_thunk_size'},
	Symbol{0xffffffff80214daa, 'interrupt_thunk_storage'},
	Symbol{0xffffffffffffffff, ''}
]
