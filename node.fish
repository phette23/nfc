#
# Command specific completions for the node command.
# These completions where generated from the commands
# man page by the make_completions.py script, but may
# have been hand edited since.
#

complete -c node -s v -l version --description "Print node's version"
complete -c node -s e -l eval --description 'Script evaluate script'
complete -c node -s p -l print --description 'Print result of --eval'
complete -c node -s i -l interactive --description 'Always enter the REPL even if stdin does not appear to be a terminal'
complete -c node -l no-deprecation --description 'Silence deprecation warnings'
complete -c node -l trace-deprecation --description 'Show stack traces on deprecations'
complete -c node -l throw-deprecation --description 'Throw errors on deprecations'
complete -c node -l v8-options --description 'Print v8 command line options'
complete -c node -l max-stack-size --description 'Set max v8 stack size (bytes)'
complete -c node -l use_strict --description 'enforce strict mode. type: bool default: false'
complete -c node -l  es5_readonly --description 'activate correct semantics for inheriting readonliness. type: bool default: false'
complete -c node -l  es52_globals --description 'activate new semantics for global var declarations. type: bool default: false'
complete -c node -l  harmony_typeof --description 'enable harmony semantics for typeof. type: bool default: false'
complete -c node -l  harmony_scoping --description 'enable harmony block scoping. type: bool default: false'
complete -c node -l  harmony_modules --description 'enable harmony modules (implies block scoping). type: bool default: false'
complete -c node -l  harmony_proxies --description 'enable harmony proxies. type: bool default: false'
complete -c node -l  harmony_collections --description 'enable harmony collections (sets, maps, and weak maps). type: bool default: false'
complete -c node -l  harmony --description 'enable all harmony features (except typeof). type: bool default: false'
complete -c node -l  packed_arrays --description 'optimizes arrays that have no holes. type: bool default: false'
complete -c node -l  smi_only_arrays --description 'tracks arrays with only smi values. type: bool default: true'
complete -c node -l  clever_optimizations --description 'Optimize object size, Array shift, DOM strings and string +. type: bool default: true'
complete -c node -l  unbox_double_arrays --description 'automatically unbox arrays of doubles. type: bool default: true'
complete -c node -l  string_slices --description 'use string slices. type: bool default: true'
complete -c node -l  crankshaft --description 'use crankshaft. type: bool default: true'
complete -c node -l  hydrogen_filter --description 'optimization filter. type: string default:'
complete -c node -l  use_range --description 'use hydrogen range analysis. type: bool default: true'
complete -c node -l  eliminate_dead_phis --description 'eliminate dead phis. type: bool default: true'
complete -c node -l  use_gvn --description 'use hydrogen global value numbering. type: bool default: true'
complete -c node -l  use_canonicalizing --description 'use hydrogen instruction canonicalizing. type: bool default: true'
complete -c node -l  use_inlining --description 'use function inlining. type: bool default: true'
complete -c node -l  max_inlined_source_size --description 'maximum source size in bytes considered for a single inlining. type: int default: 600'
complete -c node -l  max_inlined_nodes --description 'maximum number of AST nodes considered for a single inlining. type: int default: 196'
complete -c node -l  max_inlined_nodes_cumulative --description 'maximum cumulative number of AST nodes considered for inlining. type: int default: 196'
complete -c node -l  loop_invariant_code_motion --description 'loop invariant code motion. type: bool default: true'
complete -c node -l  collect_megamorphic_maps_from_stub_cache --description 'crankshaft harvests type feedback from stub cache. type: bool default: true'
complete -c node -l  hydrogen_stats --description 'print statistics for hydrogen. type: bool default: false'
complete -c node -l  trace_hydrogen --description 'trace generated hydrogen to file. type: bool default: false'
complete -c node -l  trace_phase --description 'trace generated IR for specified phases. type: string default: Z'
complete -c node -l  trace_inlining --description 'trace inlining decisions. type: bool default: false'
complete -c node -l  trace_alloc --description 'trace register allocator. type: bool default: false'
complete -c node -l  trace_all_uses --description 'trace all use positions. type: bool default: false'
complete -c node -l  trace_range --description 'trace range analysis. type: bool default: false'
complete -c node -l  trace_gvn --description 'trace global value numbering. type: bool default: false'
complete -c node -l  trace_representation --description 'trace representation types. type: bool default: false'
complete -c node -l  stress_pointer_maps --description 'pointer map for every instruction. type: bool default: false'
complete -c node -l  stress_environments --description 'environment for every instruction. type: bool default: false'
complete -c node -l  deopt_every_n_times --description 'deoptimize every n times a deopt point is passed. type: int default: 0'
complete -c node -l  trap_on_deopt --description 'put a break point before deoptimizing. type: bool default: false'
complete -c node -l  deoptimize_uncommon_cases --description 'deoptimize uncommon cases. type: bool default: true'
complete -c node -l  polymorphic_inlining --description 'polymorphic inlining. type: bool default: true'
complete -c node -l  use_osr --description 'use on-stack replacement. type: bool default: true'
complete -c node -l  array_bounds_checks_elimination --description 'perform array bounds checks elimination. type: bool default: false'
complete -c node -l  array_index_dehoisting --description 'perform array index dehoisting. type: bool default: false'
complete -c node -l  trace_osr --description 'trace on-stack replacement. type: bool default: false'
complete -c node -l  stress_runs --description 'number of stress runs. type: int default: 0'
complete -c node -l  optimize_closures --description 'optimize closures. type: bool default: true'
complete -c node -l  inline_construct --description 'inline constructor calls. type: bool default: true'
complete -c node -l  inline_arguments --description 'inline functions with arguments object. type: bool default: true'
complete -c node -l  loop_weight --description 'loop weight for representation inference. type: int default: 1'
complete -c node -l  optimize_for_in --description 'optimize functions containing for-in loops. type: bool default: true'
complete -c node -l  experimental_profiler --description 'enable all profiler experiments. type: bool default: true'
complete -c node -l  watch_ic_patching --description 'profiler considers IC stability. type: bool default: false'
complete -c node -l  frame_count --description 'number of stack frames inspected by the profiler. type: int default: 1'
complete -c node -l  self_optimization --description 'primitive functions trigger their own optimization. type: bool default: false'
complete -c node -l  direct_self_opt --description 'call recompile stub directly when self-optimizing. type: bool default: false'
complete -c node -l  retry_self_opt --description 're-try self-optimization if it failed. type: bool default: false'
complete -c node -l  count_based_interrupts --description 'trigger profiler ticks based on counting instead of timing. type: bool default: false'
complete -c node -l  interrupt_at_exit --description 'insert an interrupt check at function exit. type: bool default: false'
complete -c node -l  weighted_back_edges --description 'weight back edges by jump distance for interrupt triggering. type: bool default: false'
complete -c node -l  interrupt_budget --description 'execution budget before interrupt is triggered. type: int default: 5900'
complete -c node -l  type_info_threshold --description 'percentage of ICs that must have type info to allow optimization. type: int default: 15'
complete -c node -l  self_opt_count --description 'call count before self-optimization. type: int default: 130'
complete -c node -l  trace_opt_verbose --description 'extra verbose compilation tracing. type: bool default: false'
complete -c node -l  debug_code --description 'generate extra code (assertions) for debugging. type: bool default: false'
complete -c node -l  code_comments --description 'emit comments in code disassembly. type: bool default: false'
complete -c node -l  enable_sse2 --description 'enable use of SSE2 instructions if available. type: bool default: true'
complete -c node -l  enable_sse3 --description 'enable use of SSE3 instructions if available. type: bool default: true'
complete -c node -l  enable_sse4_1 --description 'enable use of SSE4'
complete -c node -l enable_cmov --description 'enable use of CMOV instruction if available. type: bool default: true'
complete -c node -l  enable_rdtsc --description 'enable use of RDTSC instruction if available. type: bool default: true'
complete -c node -l  enable_sahf --description 'enable use of SAHF instruction if available (X64 only). type: bool default: true'
complete -c node -l  enable_vfp3 --description 'enable use of VFP3 instructions if available - this implies enabling ARMv7 instructions (ARM only). type: bool default: true'
complete -c node -l  enable_armv7 --description 'enable use of ARMv7 instructions if available (ARM only). type: bool default: true'
complete -c node -l  enable_fpu --description 'enable use of MIPS FPU instructions if available (MIPS only). type: bool default: true'
complete -c node -l  expose_natives_as --description 'expose natives in global object. type: string default: NULL'
complete -c node -l  expose_debug_as --description 'expose debug in global object. type: string default: NULL'
complete -c node -l  expose_gc --description 'expose gc extension. type: bool default: false'
complete -c node -l  expose_externalize_string --description 'expose externalize string extension. type: bool default: false'
complete -c node -l  stack_trace_limit --description 'number of stack frames to capture. type: int default: 10'
complete -c node -l  builtins_in_stack_traces --description 'show built-in functions in stack traces. type: bool default: false'
complete -c node -l  disable_native_files --description 'disable builtin natives files. type: bool default: false'
complete -c node -l  inline_new --description 'use fast inline allocation. type: bool default: true'
complete -c node -l  stack_trace_on_abort --description 'print a stack trace if an assertion failure occurs. type: bool default: true'
complete -c node -l  trace --description 'trace function calls. type: bool default: false'
complete -c node -l  mask_constants_with_cookie --description 'use random jit cookie to mask large constants. type: bool default: true'
complete -c node -l  lazy --description 'use lazy compilation. type: bool default: true'
complete -c node -l  trace_opt --description 'trace lazy optimization. type: bool default: false'
complete -c node -l  trace_opt_stats --description 'trace lazy optimization statistics. type: bool default: false'
complete -c node -l  opt --description 'use adaptive optimizations. type: bool default: true'
complete -c node -l  always_opt --description 'always try to optimize functions. type: bool default: false'
complete -c node -l  prepare_always_opt --description 'prepare for turning on always opt. type: bool default: false'
complete -c node -l  trace_deopt --description 'trace deoptimization. type: bool default: false'
complete -c node -l  min_preparse_length --description 'minimum length for automatic enable preparsing. type: int default: 1024'
complete -c node -l  always_full_compiler --description 'try to use the dedicated run-once backend for all code. type: bool default: false'
complete -c node -l  trace_bailout --description 'print reasons for falling back to using the classic V8 backend. type: bool default: false'
complete -c node -l  compilation_cache --description 'enable compilation cache. type: bool default: true'
complete -c node -l  cache_prototype_transitions --description 'cache prototype transitions. type: bool default: true'
complete -c node -l  trace_debug_json --description 'trace debugging JSON request/response. type: bool default: false'
complete -c node -l  debugger_auto_break --description 'automatically set the debug break flag when debugger commands are in the queue. type: bool default: true'
complete -c node -l  enable_liveedit --description 'enable liveedit experimental feature. type: bool default: true'
complete -c node -l  break_on_abort --description 'always cause a debug break before aborting. type: bool default: true'
complete -c node -l  stack_size --description 'default size of stack region v8 is allowed to use (in kBytes). type: int default: 984'
complete -c node -l  max_stack_trace_source_length --description 'maximum length of function source code printed in a stack trace'
complete -c node -l always_inline_smi_code --description 'always inline smi code in non-opt code. type: bool default: false'
complete -c node -l  max_new_space_size --description 'max size of the new generation (in kBytes). type: int default: 0'
complete -c node -l  max_old_space_size --description 'max size of the old generation (in Mbytes). type: int default: 0'
complete -c node -l  max_executable_size --description 'max size of executable memory (in Mbytes). type: int default: 0'
complete -c node -l  gc_global --description 'always perform global GCs. type: bool default: false'
complete -c node -l  gc_interval --description 'garbage collect after <n> allocations. type: int default: -1'
complete -c node -l  trace_gc --description 'print one trace line following each garbage collection. type: bool default: false'
complete -c node -l  trace_gc_nvp --description 'print one detailed trace line in name=value format after each garbage collection. type: bool default: false'
complete -c node -l  print_cumulative_gc_stat --description 'print cumulative GC statistics in name=value format on exit. type: bool default: false'
complete -c node -l  trace_gc_verbose --description 'print more details following each garbage collection. type: bool default: false'
complete -c node -l  trace_fragmentation --description 'report fragmentation for old pointer and data pages. type: bool default: false'
complete -c node -l  collect_maps --description 'garbage collect maps from which no objects can be reached. type: bool default: true'
complete -c node -l  flush_code --description 'flush code that we expect not to use again before full gc. type: bool default: true'
complete -c node -l  incremental_marking --description 'use incremental marking. type: bool default: true'
complete -c node -l  incremental_marking_steps --description 'do incremental marking steps. type: bool default: true'
complete -c node -l  trace_incremental_marking --description 'trace progress of the incremental marking. type: bool default: false'
complete -c node -l  use_idle_notification --description 'Use idle notification to reduce memory footprint'
complete -c node -l send_idle_notification --description 'Send idle notification between stress runs'
complete -c node -l use_ic --description 'use inline caching. type: bool default: true'
complete -c node -l  native_code_counters --description 'generate extra code for manipulating stats counters. type: bool default: false'
complete -c node -l  always_compact --description 'Perform compaction on every full GC. type: bool default: false'
complete -c node -l  lazy_sweeping --description 'Use lazy sweeping for old pointer and data spaces. type: bool default: true'
complete -c node -l  never_compact --description 'Never perform compaction on full GC - testing only. type: bool default: false'
complete -c node -l  compact_code_space --description 'Compact code space on full non-incremental collections. type: bool default: true'
complete -c node -l  cleanup_code_caches_at_gc --description 'Flush inline caches prior to mark compact collection and flush code caches in maps during mark compact cycle'
complete -c node -l random_seed --description 'Default seed for initializing random generator (0, the default, means to use system random)'
complete -c node -l use_verbose_printer --description 'allows verbose printing. type: bool default: true'
complete -c node -l  allow_natives_syntax --description 'allow natives syntax. type: bool default: false'
complete -c node -l  trace_sim --description 'Trace simulator execution. type: bool default: false'
complete -c node -l  check_icache --description 'Check icache flushes in ARM and MIPS simulator. type: bool default: false'
complete -c node -l  stop_sim_at --description 'Simulator stop after x number of instructions. type: int default: 0'
complete -c node -l  sim_stack_alignment --description 'Stack alignment in bytes in simulator (4 or 8, 8 is default). type: int default: 8'
complete -c node -l  trace_exception --description 'print stack trace when throwing exceptions. type: bool default: false'
complete -c node -l  preallocate_message_memory --description 'preallocate some memory to build stack traces'
complete -c node -l randomize_hashes --description 'randomize hashes to avoid predictable hash collisions (with snapshots this option cannot override the baked-in seed). type: bool default: true'
complete -c node -l  hash_seed --description 'Fixed seed to use to hash property keys (0 means random) (with snapshots this option cannot override the baked-in seed). type: int default: 0'
complete -c node -l  preemption --description 'activate a 100ms timer that switches between V8 threads. type: bool default: false'
complete -c node -l  regexp_optimization --description 'generate optimized regexp code. type: bool default: true'
complete -c node -l  testing_bool_flag --description 'testing_bool_flag. type: bool default: true'
complete -c node -l  testing_int_flag --description 'testing_int_flag. type: int default: 13'
complete -c node -l  testing_float_flag --description 'float-flag. type: float default: 2'
complete -c node -l testing_string_flag --description 'string-flag. type: string default: Hello, world!'
complete -c node -l  testing_prng_seed --description 'Seed used for threading test randomness. type: int default: 42'
complete -c node -l  testing_serialization_file --description 'file in which to serialize heap. type: string default: /tmp/serdes'
complete -c node -l  help --description 'Print usage message, including flags, on console. type: bool default: true'
complete -c node -l  dump_counters --description 'Dump counters on exit. type: bool default: false'
complete -c node -l  debugger --description 'Enable JavaScript debugger. type: bool default: false'
complete -c node -l  remote_debugger --description 'Connect JavaScript debugger to the debugger agent in another process. type: bool default: false'
complete -c node -l  debugger_agent --description 'Enable debugger agent. type: bool default: false'
complete -c node -l  debugger_port --description 'Port to use for remote debugging. type: int default: 5858'
complete -c node -l  map_counters --description 'Map counters to a file. type: string default:'
complete -c node -l  js_arguments --description 'Pass all remaining arguments to the script'
complete -c node -l debug_compile_events --description 'Enable debugger compile events. type: bool default: true'
complete -c node -l  debug_script_collected_events --description 'Enable debugger script collected events. type: bool default: true'
complete -c node -l  gdbjit --description 'enable GDBJIT interface (disables compacting GC). type: bool default: false'
complete -c node -l  gdbjit_full --description 'enable GDBJIT interface for all code objects. type: bool default: false'
complete -c node -l  gdbjit_dump --description 'dump elf objects with debug info to disk. type: bool default: false'
complete -c node -l  gdbjit_dump_filter --description 'dump only objects containing this substring. type: string default:'
complete -c node -l  force_marking_deque_overflows --description 'force overflows of marking deque by reducing its size to 64 words. type: bool default: false'
complete -c node -l  stress_compaction --description 'stress the GC compactor to flush out bugs (implies --force_marking_deque_overflows). type: bool default: false'
complete -c node -l  log --description 'Minimal logging (no API, code, GC, suspect, or handles samples)'
complete -c node -l log_all --description 'Log all events to the log file'
complete -c node -l log_runtime --description 'Activate runtime system %Log call'
complete -c node -l log_api --description 'Log API events to the log file'
complete -c node -l log_code --description 'Log code events to the log file without profiling'
complete -c node -l log_gc --description 'Log heap samples on garbage collection for the hp2ps tool'
complete -c node -l log_handles --description 'Log global handle events'
complete -c node -l log_snapshot_positions --description 'log positions of (de)serialized objects in the snapshot'
complete -c node -l log_suspect --description 'Log suspect operations'
complete -c node -l prof --description 'Log statistical profiling information (implies --log-code)'
complete -c node -l prof_auto --description 'Used with --prof, starts profiling automatically) type: bool default: true'
complete -c node -l  prof_lazy --description 'Used with --prof, only does sampling and logging when profiler is active (implies --noprof_auto)'
complete -c node -l prof_browser_mode --description 'Used with --prof, turns on browser-compatible mode for profiling'
complete -c node -l log_regexp --description 'Log regular expression execution'
complete -c node -l sliding_state_window --description 'Update sliding state window counters'
complete -c node -l logfile --description 'Specify the name of the log file'
complete -c node -l ll_prof --description 'Enable low-level linux profiler'
