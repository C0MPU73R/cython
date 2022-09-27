# AUTO-GENERATED BY Tools/make_dataclass_tests.py
# DO NOT EDIT

# cython: language_level=3
include "test_dataclasses.pxi"

@dataclass
@cclass
class C_TestCase_test_no_fields:
    pass

@dataclass
@cclass
class C_TestCase_test_no_fields_but_member_variable:
    i = 0

@dataclass
@cclass
class C_TestCase_test_one_field_no_default:
    x: int

@dataclass
@cclass
class C_TestCase_test_named_init_params:
    x: int

@dataclass
@cclass
class C_TestCase_test_field_named_object:
    object: str

@dataclass(frozen=True)
@cclass
class C_TestCase_test_field_named_object_frozen:
    object: str

@dataclass
@cclass
class C0_TestCase_test_0_field_compare:
    pass

@dataclass(order=False)
@cclass
class C1_TestCase_test_0_field_compare:
    pass

@dataclass(order=True)
@cclass
class C_TestCase_test_0_field_compare:
    pass

@dataclass
@cclass
class C0_TestCase_test_1_field_compare:
    x: int

@dataclass(order=False)
@cclass
class C1_TestCase_test_1_field_compare:
    x: int

@dataclass(order=True)
@cclass
class C_TestCase_test_1_field_compare:
    x: int

@dataclass
@cclass
class C_TestCase_test_field_no_default:
    x: int = field()

@dataclass
@cclass
class C_TestCase_test_not_in_compare:
    x: int = 0
    y: int = field(compare=False, default=4)

class Mutable_TestCase_test_deliberately_mutable_defaults:

    def __init__(self):
        self.l = []

@dataclass
@cclass
class C_TestCase_test_deliberately_mutable_defaults:
    x: Mutable_TestCase_test_deliberately_mutable_defaults

@dataclass()
@cclass
class C_TestCase_test_no_options:
    x: int

@dataclass
@cclass
class Point_TestCase_test_not_tuple:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_not_tuple:
    x: int
    y: int

@dataclass
@cclass
class Point3D_TestCase_test_not_other_dataclass:
    x: int
    y: int
    z: int

@dataclass
@cclass
class Date_TestCase_test_not_other_dataclass:
    year: int
    month: int
    day: int

@dataclass
@cclass
class Point3Dv1_TestCase_test_not_other_dataclass:
    x: int = 0
    y: int = 0
    z: int = 0

@dataclass
@cclass
class C_TestCase_test_class_var_no_default:
    x: ClassVar[int]

@dataclass
@cclass
class C_TestCase_test_init_var:
    x: int = None
    init_param: InitVar[int] = None

    def __post_init__(self, init_param):
        if self.x is None:
            self.x = init_param * 2

@dataclass
@cclass
class Foo_TestCase_test_default_factory_derived:
    x: dict = field(default_factory=dict)

@dataclass
@cclass
class Bar_TestCase_test_default_factory_derived(Foo_TestCase_test_default_factory_derived):
    y: int = 1

@dataclass
@cclass
class Baz_TestCase_test_default_factory_derived(Foo_TestCase_test_default_factory_derived):
    pass

class NotDataClass_TestCase_test_is_dataclass:
    pass

@dataclass
@cclass
class C_TestCase_test_is_dataclass:
    x: int

@dataclass
@cclass
class D_TestCase_test_is_dataclass:
    d: C_TestCase_test_is_dataclass
    e: int

class A_TestCase_test_is_dataclass_when_getattr_always_returns:

    def __getattr__(self, key):
        return 0

class B_TestCase_test_is_dataclass_when_getattr_always_returns:
    pass

@dataclass
@cclass
class C_TestCase_test_helper_fields_with_class_instance:
    x: int
    y: float

class C_TestCase_test_helper_fields_exception:
    pass

@dataclass
@cclass
class C_TestCase_test_helper_asdict:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_helper_asdict_raises_on_classes:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_helper_asdict_copy_values:
    x: int
    y: List[int] = field(default_factory=list)

@dataclass
@cclass
class UserId_TestCase_test_helper_asdict_nested:
    token: int
    group: int

@dataclass
@cclass
class User_TestCase_test_helper_asdict_nested:
    name: str
    id: UserId_TestCase_test_helper_asdict_nested

@dataclass
@cclass
class User_TestCase_test_helper_asdict_builtin_containers:
    name: str
    id: int

@dataclass
@cclass
class GroupList_TestCase_test_helper_asdict_builtin_containers:
    id: int
    users: List[User_TestCase_test_helper_asdict_builtin_containers]

@dataclass
@cclass
class GroupTuple_TestCase_test_helper_asdict_builtin_containers:
    id: int
    users: Tuple[User_TestCase_test_helper_asdict_builtin_containers, ...]

@dataclass
@cclass
class GroupDict_TestCase_test_helper_asdict_builtin_containers:
    id: int
    users: Dict[str, User_TestCase_test_helper_asdict_builtin_containers]

@dataclass
@cclass
class Child_TestCase_test_helper_asdict_builtin_object_containers:
    d: object

@dataclass
@cclass
class Parent_TestCase_test_helper_asdict_builtin_object_containers:
    child: Child_TestCase_test_helper_asdict_builtin_object_containers

@dataclass
@cclass
class C_TestCase_test_helper_asdict_factory:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_helper_asdict_namedtuple:
    x: str
    y: T

@dataclass
@cclass
class C_TestCase_test_helper_asdict_namedtuple_key:
    f: dict

class T_TestCase_test_helper_asdict_namedtuple_derived(namedtuple('Tbase', 'a')):

    def my_a(self):
        return self.a

@dataclass
@cclass
class C_TestCase_test_helper_asdict_namedtuple_derived:
    f: T_TestCase_test_helper_asdict_namedtuple_derived

@dataclass
@cclass
class C_TestCase_test_helper_astuple:
    x: int
    y: int = 0

@dataclass
@cclass
class C_TestCase_test_helper_astuple_raises_on_classes:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_helper_astuple_copy_values:
    x: int
    y: List[int] = field(default_factory=list)

@dataclass
@cclass
class UserId_TestCase_test_helper_astuple_nested:
    token: int
    group: int

@dataclass
@cclass
class User_TestCase_test_helper_astuple_nested:
    name: str
    id: UserId_TestCase_test_helper_astuple_nested

@dataclass
@cclass
class User_TestCase_test_helper_astuple_builtin_containers:
    name: str
    id: int

@dataclass
@cclass
class GroupList_TestCase_test_helper_astuple_builtin_containers:
    id: int
    users: List[User_TestCase_test_helper_astuple_builtin_containers]

@dataclass
@cclass
class GroupTuple_TestCase_test_helper_astuple_builtin_containers:
    id: int
    users: Tuple[User_TestCase_test_helper_astuple_builtin_containers, ...]

@dataclass
@cclass
class GroupDict_TestCase_test_helper_astuple_builtin_containers:
    id: int
    users: Dict[str, User_TestCase_test_helper_astuple_builtin_containers]

@dataclass
@cclass
class Child_TestCase_test_helper_astuple_builtin_object_containers:
    d: object

@dataclass
@cclass
class Parent_TestCase_test_helper_astuple_builtin_object_containers:
    child: Child_TestCase_test_helper_astuple_builtin_object_containers

@dataclass
@cclass
class C_TestCase_test_helper_astuple_factory:
    x: int
    y: int

@dataclass
@cclass
class C_TestCase_test_helper_astuple_namedtuple:
    x: str
    y: T

@dataclass
@cclass
class C_TestCase_test_alternate_classmethod_constructor:
    x: int

    @classmethod
    def from_file(cls, filename):
        value_in_file = 20
        return cls(value_in_file)

@dataclass
@cclass
class C_TestCase_test_field_metadata_default:
    i: int

@dataclass
@cclass
class P_TestCase_test_dataclasses_pickleable:
    x: int
    y: int = 0

@dataclass
@cclass
class Q_TestCase_test_dataclasses_pickleable:
    x: int
    y: int = field(default=0, init=False)

@dataclass
@cclass
class R_TestCase_test_dataclasses_pickleable:
    x: int
    y: List[int] = field(default_factory=list)

@dataclass
@cclass
class C_TestInit_test_overwriting_init:
    x: int

    def __init__(self, x):
        self.x = 2 * x

@dataclass(init=True)
@cclass
class C_TestInit_test_overwriting_init_:
    x: int

    def __init__(self, x):
        self.x = 2 * x

@dataclass(init=False)
@cclass
class C_TestInit_test_overwriting_init__:
    x: int

    def __init__(self, x):
        self.x = 2 * x

@dataclass
@cclass
class C_TestRepr_test_overwriting_repr:
    x: int

    def __repr__(self):
        return 'x'

@dataclass(repr=True)
@cclass
class C_TestRepr_test_overwriting_repr_:
    x: int

    def __repr__(self):
        return 'x'

@dataclass(repr=False)
@cclass
class C_TestRepr_test_overwriting_repr__:
    x: int

    def __repr__(self):
        return 'x'

@dataclass(eq=False)
@cclass
class C_TestEq_test_no_eq:
    x: int

@dataclass(eq=False)
@cclass
class C_TestEq_test_no_eq_:
    x: int

    def __eq__(self, other):
        return other == 10

@dataclass
@cclass
class C_TestEq_test_overwriting_eq:
    x: int

    def __eq__(self, other):
        return other == 3

@dataclass(eq=True)
@cclass
class C_TestEq_test_overwriting_eq_:
    x: int

    def __eq__(self, other):
        return other == 4

@dataclass(eq=False)
@cclass
class C_TestEq_test_overwriting_eq__:
    x: int

    def __eq__(self, other):
        return other == 5

@dataclass(unsafe_hash=True)
@cclass
class C_TestHash_test_unsafe_hash:
    x: int
    y: str

@dataclass(frozen=True)
@cclass
class C_TestHash_test_0_field_hash:
    pass

@dataclass(unsafe_hash=True)
@cclass
class C_TestHash_test_0_field_hash_:
    pass

@dataclass(frozen=True)
@cclass
class C_TestHash_test_1_field_hash:
    x: int

@dataclass(unsafe_hash=True)
@cclass
class C_TestHash_test_1_field_hash_:
    x: int

class Base1_TestMakeDataclass_test_base:
    pass

class Base2_TestMakeDataclass_test_base:
    pass

@dataclass
@cclass
class Base1_TestMakeDataclass_test_base_dataclass:
    x: int

class Base2_TestMakeDataclass_test_base_dataclass:
    pass

@dataclass(frozen=True)
@cclass
class C_TestReplace_test:
    x: int
    y: int

@dataclass(frozen=True)
@cclass
class C_TestReplace_test_invalid_field_name:
    x: int
    y: int

@dataclass(frozen=True)
@cclass
class C_TestReplace_test_invalid_object:
    x: int
    y: int

@dataclass
@cclass
class C_TestReplace_test_no_init:
    x: int
    y: int = field(init=False, default=10)

@dataclass
@cclass
class C_TestReplace_test_classvar:
    x: int
    y: ClassVar[int] = 1000

@dataclass
@cclass
class C_TestReplace_test_initvar_is_specified:
    x: int
    y: InitVar[int]

    def __post_init__(self, y):
        self.x *= y

@dataclass
@cclass
class C_TestReplace_test_recursive_repr:
    f: object

@dataclass
@cclass
class C_TestReplace_test_recursive_repr_two_attrs:
    f: object
    g: object

@dataclass
@cclass
class C_TestReplace_test_recursive_repr_indirection:
    f: object

@dataclass
@cclass
class D_TestReplace_test_recursive_repr_indirection:
    f: object

@dataclass
@cclass
class C_TestReplace_test_recursive_repr_indirection_two:
    f: object

@dataclass
@cclass
class D_TestReplace_test_recursive_repr_indirection_two:
    f: object

@dataclass
@cclass
class E_TestReplace_test_recursive_repr_indirection_two:
    f: object

@dataclass
@cclass
class C_TestReplace_test_recursive_repr_misc_attrs:
    f: object
    g: int

class CustomError(Exception):
    pass

class TestCase(unittest.TestCase):

    def test_no_fields(self):
        C = C_TestCase_test_no_fields
        o = C()
        self.assertEqual(len(fields(C)), 0)

    def test_no_fields_but_member_variable(self):
        C = C_TestCase_test_no_fields_but_member_variable
        o = C()
        self.assertEqual(len(fields(C)), 0)

    def test_one_field_no_default(self):
        C = C_TestCase_test_one_field_no_default
        o = C(42)
        self.assertEqual(o.x, 42)

    def test_named_init_params(self):
        C = C_TestCase_test_named_init_params
        o = C(x=32)
        self.assertEqual(o.x, 32)

    def test_field_named_object(self):
        C = C_TestCase_test_field_named_object
        c = C('foo')
        self.assertEqual(c.object, 'foo')

    def test_field_named_object_frozen(self):
        C = C_TestCase_test_field_named_object_frozen
        c = C('foo')
        self.assertEqual(c.object, 'foo')

    def test_0_field_compare(self):
        C0 = C0_TestCase_test_0_field_compare
        C1 = C1_TestCase_test_0_field_compare
        for cls in [C0, C1]:
            with self.subTest(cls=cls):
                self.assertEqual(cls(), cls())
                for (idx, fn) in enumerate([lambda a, b: a < b, lambda a, b: a <= b, lambda a, b: a > b, lambda a, b: a >= b]):
                    with self.subTest(idx=idx):
                        with self.assertRaises(TypeError):
                            fn(cls(), cls())
        C = C_TestCase_test_0_field_compare
        self.assertLessEqual(C(), C())
        self.assertGreaterEqual(C(), C())

    def test_1_field_compare(self):
        C0 = C0_TestCase_test_1_field_compare
        C1 = C1_TestCase_test_1_field_compare
        for cls in [C0, C1]:
            with self.subTest(cls=cls):
                self.assertEqual(cls(1), cls(1))
                self.assertNotEqual(cls(0), cls(1))
                for (idx, fn) in enumerate([lambda a, b: a < b, lambda a, b: a <= b, lambda a, b: a > b, lambda a, b: a >= b]):
                    with self.subTest(idx=idx):
                        with self.assertRaises(TypeError):
                            fn(cls(0), cls(0))
        C = C_TestCase_test_1_field_compare
        self.assertLess(C(0), C(1))
        self.assertLessEqual(C(0), C(1))
        self.assertLessEqual(C(1), C(1))
        self.assertGreater(C(1), C(0))
        self.assertGreaterEqual(C(1), C(0))
        self.assertGreaterEqual(C(1), C(1))

    def test_field_no_default(self):
        C = C_TestCase_test_field_no_default
        self.assertEqual(C(5).x, 5)
        with self.assertRaises(TypeError):
            C()

    def test_not_in_compare(self):
        C = C_TestCase_test_not_in_compare
        self.assertEqual(C(), C(0, 20))
        self.assertEqual(C(1, 10), C(1, 20))
        self.assertNotEqual(C(3), C(4, 10))
        self.assertNotEqual(C(3, 10), C(4, 10))

    def test_deliberately_mutable_defaults(self):
        Mutable = Mutable_TestCase_test_deliberately_mutable_defaults
        C = C_TestCase_test_deliberately_mutable_defaults
        lst = Mutable()
        o1 = C(lst)
        o2 = C(lst)
        self.assertEqual(o1, o2)
        o1.x.l.extend([1, 2])
        self.assertEqual(o1, o2)
        self.assertEqual(o1.x.l, [1, 2])
        self.assertIs(o1.x, o2.x)

    def test_no_options(self):
        C = C_TestCase_test_no_options
        self.assertEqual(C(42).x, 42)

    def test_not_tuple(self):
        Point = Point_TestCase_test_not_tuple
        self.assertNotEqual(Point(1, 2), (1, 2))
        C = C_TestCase_test_not_tuple
        self.assertNotEqual(Point(1, 3), C(1, 3))

    def test_not_other_dataclass(self):
        Point3D = Point3D_TestCase_test_not_other_dataclass
        Date = Date_TestCase_test_not_other_dataclass
        self.assertNotEqual(Point3D(2017, 6, 3), Date(2017, 6, 3))
        self.assertNotEqual(Point3D(1, 2, 3), (1, 2, 3))
        with self.assertRaises(TypeError):
            (x, y, z) = Point3D(4, 5, 6)
        Point3Dv1 = Point3Dv1_TestCase_test_not_other_dataclass
        self.assertNotEqual(Point3D(0, 0, 0), Point3Dv1())

    def test_class_var_no_default(self):
        C = C_TestCase_test_class_var_no_default
        self.assertNotIn('x', C.__dict__)

    def test_init_var(self):
        C = C_TestCase_test_init_var
        c = C(init_param=10)
        self.assertEqual(c.x, 20)

    @skip_on_versions_below((3, 10))
    def test_init_var_preserve_type(self):
        self.assertEqual(InitVar[int].type, int)
        self.assertEqual(repr(InitVar[int]), 'dataclasses.InitVar[int]')
        self.assertEqual(repr(InitVar[List[int]]), 'dataclasses.InitVar[typing.List[int]]')
        self.assertEqual(repr(InitVar[list[int]]), 'dataclasses.InitVar[list[int]]')
        self.assertEqual(repr(InitVar[int | str]), 'dataclasses.InitVar[int | str]')

    def test_default_factory_derived(self):
        Foo = Foo_TestCase_test_default_factory_derived
        Bar = Bar_TestCase_test_default_factory_derived
        self.assertEqual(Foo().x, {})
        self.assertEqual(Bar().x, {})
        self.assertEqual(Bar().y, 1)
        Baz = Baz_TestCase_test_default_factory_derived
        self.assertEqual(Baz().x, {})

    def test_is_dataclass(self):
        NotDataClass = NotDataClass_TestCase_test_is_dataclass
        self.assertFalse(is_dataclass(0))
        self.assertFalse(is_dataclass(int))
        self.assertFalse(is_dataclass(NotDataClass))
        self.assertFalse(is_dataclass(NotDataClass()))
        C = C_TestCase_test_is_dataclass
        D = D_TestCase_test_is_dataclass
        c = C(10)
        d = D(c, 4)
        self.assertTrue(is_dataclass(C))
        self.assertTrue(is_dataclass(c))
        self.assertFalse(is_dataclass(c.x))
        self.assertTrue(is_dataclass(d.d))
        self.assertFalse(is_dataclass(d.e))

    def test_is_dataclass_when_getattr_always_returns(self):
        A = A_TestCase_test_is_dataclass_when_getattr_always_returns
        self.assertFalse(is_dataclass(A))
        a = A()
        B = B_TestCase_test_is_dataclass_when_getattr_always_returns
        b = B()
        b.__dataclass_fields__ = []
        for obj in (a, b):
            with self.subTest(obj=obj):
                self.assertFalse(is_dataclass(obj))
                with self.assertRaises(TypeError):
                    asdict(obj)
                with self.assertRaises(TypeError):
                    astuple(obj)
                with self.assertRaises(TypeError):
                    replace(obj, x=0)

    def test_helper_fields_with_class_instance(self):
        C = C_TestCase_test_helper_fields_with_class_instance
        self.assertEqual(fields(C), fields(C(0, 0.0)))

    def test_helper_fields_exception(self):
        with self.assertRaises(TypeError):
            fields(0)
        C = C_TestCase_test_helper_fields_exception
        with self.assertRaises(TypeError):
            fields(C)
        with self.assertRaises(TypeError):
            fields(C())

    def test_helper_asdict(self):
        C = C_TestCase_test_helper_asdict
        c = C(1, 2)
        self.assertEqual(asdict(c), {'x': 1, 'y': 2})
        self.assertEqual(asdict(c), asdict(c))
        self.assertIsNot(asdict(c), asdict(c))
        c.x = 42
        self.assertEqual(asdict(c), {'x': 42, 'y': 2})
        self.assertIs(type(asdict(c)), dict)

    def test_helper_asdict_raises_on_classes(self):
        C = C_TestCase_test_helper_asdict_raises_on_classes
        with self.assertRaises(TypeError):
            asdict(C)
        with self.assertRaises(TypeError):
            asdict(int)

    def test_helper_asdict_copy_values(self):
        C = C_TestCase_test_helper_asdict_copy_values
        initial = []
        c = C(1, initial)
        d = asdict(c)
        self.assertEqual(d['y'], initial)
        self.assertIsNot(d['y'], initial)
        c = C(1)
        d = asdict(c)
        d['y'].append(1)
        self.assertEqual(c.y, [])

    def test_helper_asdict_nested(self):
        UserId = UserId_TestCase_test_helper_asdict_nested
        User = User_TestCase_test_helper_asdict_nested
        u = User('Joe', UserId(123, 1))
        d = asdict(u)
        self.assertEqual(d, {'name': 'Joe', 'id': {'token': 123, 'group': 1}})
        self.assertIsNot(asdict(u), asdict(u))
        u.id.group = 2
        self.assertEqual(asdict(u), {'name': 'Joe', 'id': {'token': 123, 'group': 2}})

    def test_helper_asdict_builtin_containers(self):
        User = User_TestCase_test_helper_asdict_builtin_containers
        GroupList = GroupList_TestCase_test_helper_asdict_builtin_containers
        GroupTuple = GroupTuple_TestCase_test_helper_asdict_builtin_containers
        GroupDict = GroupDict_TestCase_test_helper_asdict_builtin_containers
        a = User('Alice', 1)
        b = User('Bob', 2)
        gl = GroupList(0, [a, b])
        gt = GroupTuple(0, (a, b))
        gd = GroupDict(0, {'first': a, 'second': b})
        self.assertEqual(asdict(gl), {'id': 0, 'users': [{'name': 'Alice', 'id': 1}, {'name': 'Bob', 'id': 2}]})
        self.assertEqual(asdict(gt), {'id': 0, 'users': ({'name': 'Alice', 'id': 1}, {'name': 'Bob', 'id': 2})})
        self.assertEqual(asdict(gd), {'id': 0, 'users': {'first': {'name': 'Alice', 'id': 1}, 'second': {'name': 'Bob', 'id': 2}}})

    def test_helper_asdict_builtin_object_containers(self):
        Child = Child_TestCase_test_helper_asdict_builtin_object_containers
        Parent = Parent_TestCase_test_helper_asdict_builtin_object_containers
        self.assertEqual(asdict(Parent(Child([1]))), {'child': {'d': [1]}})
        self.assertEqual(asdict(Parent(Child({1: 2}))), {'child': {'d': {1: 2}}})

    def test_helper_asdict_factory(self):
        C = C_TestCase_test_helper_asdict_factory
        c = C(1, 2)
        d = asdict(c, dict_factory=OrderedDict)
        self.assertEqual(d, OrderedDict([('x', 1), ('y', 2)]))
        self.assertIsNot(d, asdict(c, dict_factory=OrderedDict))
        c.x = 42
        d = asdict(c, dict_factory=OrderedDict)
        self.assertEqual(d, OrderedDict([('x', 42), ('y', 2)]))
        self.assertIs(type(d), OrderedDict)

    def test_helper_asdict_namedtuple(self):
        T = namedtuple('T', 'a b c')
        C = C_TestCase_test_helper_asdict_namedtuple
        c = C('outer', T(1, C('inner', T(11, 12, 13)), 2))
        d = asdict(c)
        self.assertEqual(d, {'x': 'outer', 'y': T(1, {'x': 'inner', 'y': T(11, 12, 13)}, 2)})
        d = asdict(c, dict_factory=OrderedDict)
        self.assertEqual(d, {'x': 'outer', 'y': T(1, {'x': 'inner', 'y': T(11, 12, 13)}, 2)})
        self.assertIs(type(d), OrderedDict)
        self.assertIs(type(d['y'][1]), OrderedDict)

    def test_helper_asdict_namedtuple_key(self):
        C = C_TestCase_test_helper_asdict_namedtuple_key
        T = namedtuple('T', 'a')
        c = C({T('an a'): 0})
        self.assertEqual(asdict(c), {'f': {T(a='an a'): 0}})

    def test_helper_asdict_namedtuple_derived(self):
        T = T_TestCase_test_helper_asdict_namedtuple_derived
        C = C_TestCase_test_helper_asdict_namedtuple_derived
        t = T(6)
        c = C(t)
        d = asdict(c)
        self.assertEqual(d, {'f': T(a=6)})
        self.assertIsNot(d['f'], t)
        self.assertEqual(d['f'].my_a(), 6)

    def test_helper_astuple(self):
        C = C_TestCase_test_helper_astuple
        c = C(1)
        self.assertEqual(astuple(c), (1, 0))
        self.assertEqual(astuple(c), astuple(c))
        self.assertIsNot(astuple(c), astuple(c))
        c.y = 42
        self.assertEqual(astuple(c), (1, 42))
        self.assertIs(type(astuple(c)), tuple)

    def test_helper_astuple_raises_on_classes(self):
        C = C_TestCase_test_helper_astuple_raises_on_classes
        with self.assertRaises(TypeError):
            astuple(C)
        with self.assertRaises(TypeError):
            astuple(int)

    def test_helper_astuple_copy_values(self):
        C = C_TestCase_test_helper_astuple_copy_values
        initial = []
        c = C(1, initial)
        t = astuple(c)
        self.assertEqual(t[1], initial)
        self.assertIsNot(t[1], initial)
        c = C(1)
        t = astuple(c)
        t[1].append(1)
        self.assertEqual(c.y, [])

    def test_helper_astuple_nested(self):
        UserId = UserId_TestCase_test_helper_astuple_nested
        User = User_TestCase_test_helper_astuple_nested
        u = User('Joe', UserId(123, 1))
        t = astuple(u)
        self.assertEqual(t, ('Joe', (123, 1)))
        self.assertIsNot(astuple(u), astuple(u))
        u.id.group = 2
        self.assertEqual(astuple(u), ('Joe', (123, 2)))

    def test_helper_astuple_builtin_containers(self):
        User = User_TestCase_test_helper_astuple_builtin_containers
        GroupList = GroupList_TestCase_test_helper_astuple_builtin_containers
        GroupTuple = GroupTuple_TestCase_test_helper_astuple_builtin_containers
        GroupDict = GroupDict_TestCase_test_helper_astuple_builtin_containers
        a = User('Alice', 1)
        b = User('Bob', 2)
        gl = GroupList(0, [a, b])
        gt = GroupTuple(0, (a, b))
        gd = GroupDict(0, {'first': a, 'second': b})
        self.assertEqual(astuple(gl), (0, [('Alice', 1), ('Bob', 2)]))
        self.assertEqual(astuple(gt), (0, (('Alice', 1), ('Bob', 2))))
        self.assertEqual(astuple(gd), (0, {'first': ('Alice', 1), 'second': ('Bob', 2)}))

    def test_helper_astuple_builtin_object_containers(self):
        Child = Child_TestCase_test_helper_astuple_builtin_object_containers
        Parent = Parent_TestCase_test_helper_astuple_builtin_object_containers
        self.assertEqual(astuple(Parent(Child([1]))), (([1],),))
        self.assertEqual(astuple(Parent(Child({1: 2}))), (({1: 2},),))

    def test_helper_astuple_factory(self):
        C = C_TestCase_test_helper_astuple_factory
        NT = namedtuple('NT', 'x y')

        def nt(lst):
            return NT(*lst)
        c = C(1, 2)
        t = astuple(c, tuple_factory=nt)
        self.assertEqual(t, NT(1, 2))
        self.assertIsNot(t, astuple(c, tuple_factory=nt))
        c.x = 42
        t = astuple(c, tuple_factory=nt)
        self.assertEqual(t, NT(42, 2))
        self.assertIs(type(t), NT)

    def test_helper_astuple_namedtuple(self):
        T = namedtuple('T', 'a b c')
        C = C_TestCase_test_helper_astuple_namedtuple
        c = C('outer', T(1, C('inner', T(11, 12, 13)), 2))
        t = astuple(c)
        self.assertEqual(t, ('outer', T(1, ('inner', (11, 12, 13)), 2)))
        t = astuple(c, tuple_factory=list)
        self.assertEqual(t, ['outer', T(1, ['inner', T(11, 12, 13)], 2)])

    def test_alternate_classmethod_constructor(self):
        C = C_TestCase_test_alternate_classmethod_constructor
        self.assertEqual(C.from_file('filename').x, 20)

    def test_field_metadata_default(self):
        C = C_TestCase_test_field_metadata_default
        self.assertFalse(fields(C)[0].metadata)
        self.assertEqual(len(fields(C)[0].metadata), 0)
        with self.assertRaises(TypeError):
            fields(C)[0].metadata['test'] = 3

    def test_dataclasses_pickleable(self):
        global P, Q, R
        P = P_TestCase_test_dataclasses_pickleable
        Q = Q_TestCase_test_dataclasses_pickleable
        R = R_TestCase_test_dataclasses_pickleable
        q = Q(1)
        q.y = 2
        samples = [P(1), P(1, 2), Q(1), q, R(1), R(1, [2, 3, 4])]
        for sample in samples:
            for proto in range(pickle.HIGHEST_PROTOCOL + 1):
                with self.subTest(sample=sample, proto=proto):
                    new_sample = pickle.loads(pickle.dumps(sample, proto))
                    self.assertEqual(sample.x, new_sample.x)
                    self.assertEqual(sample.y, new_sample.y)
                    self.assertIsNot(sample, new_sample)
                    new_sample.x = 42
                    another_new_sample = pickle.loads(pickle.dumps(new_sample, proto))
                    self.assertEqual(new_sample.x, another_new_sample.x)
                    self.assertEqual(sample.y, another_new_sample.y)

class TestFieldNoAnnotation(unittest.TestCase):
    pass

class TestInit(unittest.TestCase):

    def test_overwriting_init(self):
        C = C_TestInit_test_overwriting_init
        self.assertEqual(C(3).x, 6)
        C = C_TestInit_test_overwriting_init_
        self.assertEqual(C(4).x, 8)
        C = C_TestInit_test_overwriting_init__
        self.assertEqual(C(5).x, 10)

class TestRepr(unittest.TestCase):

    def test_overwriting_repr(self):
        C = C_TestRepr_test_overwriting_repr
        self.assertEqual(repr(C(0)), 'x')
        C = C_TestRepr_test_overwriting_repr_
        self.assertEqual(repr(C(0)), 'x')
        C = C_TestRepr_test_overwriting_repr__
        self.assertEqual(repr(C(0)), 'x')

class TestEq(unittest.TestCase):

    def test_no_eq(self):
        C = C_TestEq_test_no_eq
        self.assertNotEqual(C(0), C(0))
        c = C(3)
        self.assertEqual(c, c)
        C = C_TestEq_test_no_eq_
        self.assertEqual(C(3), 10)

    def test_overwriting_eq(self):
        C = C_TestEq_test_overwriting_eq
        self.assertEqual(C(1), 3)
        self.assertNotEqual(C(1), 1)
        C = C_TestEq_test_overwriting_eq_
        self.assertEqual(C(1), 4)
        self.assertNotEqual(C(1), 1)
        C = C_TestEq_test_overwriting_eq__
        self.assertEqual(C(1), 5)
        self.assertNotEqual(C(1), 1)

class TestOrdering(unittest.TestCase):
    pass

class TestHash(unittest.TestCase):

    def test_unsafe_hash(self):
        C = C_TestHash_test_unsafe_hash
        self.assertEqual(hash(C(1, 'foo')), hash((1, 'foo')))

    def test_0_field_hash(self):
        C = C_TestHash_test_0_field_hash
        self.assertEqual(hash(C()), hash(()))
        C = C_TestHash_test_0_field_hash_
        self.assertEqual(hash(C()), hash(()))

    def test_1_field_hash(self):
        C = C_TestHash_test_1_field_hash
        self.assertEqual(hash(C(4)), hash((4,)))
        self.assertEqual(hash(C(42)), hash((42,)))
        C = C_TestHash_test_1_field_hash_
        self.assertEqual(hash(C(4)), hash((4,)))
        self.assertEqual(hash(C(42)), hash((42,)))

class TestMakeDataclass(unittest.TestCase):
    pass

class TestReplace(unittest.TestCase):

    def test(self):
        C = C_TestReplace_test
        c = C(1, 2)
        c1 = replace(c, x=3)
        self.assertEqual(c1.x, 3)
        self.assertEqual(c1.y, 2)

    def test_invalid_field_name(self):
        C = C_TestReplace_test_invalid_field_name
        c = C(1, 2)
        with self.assertRaises(TypeError):
            c1 = replace(c, z=3)

    def test_invalid_object(self):
        C = C_TestReplace_test_invalid_object
        with self.assertRaises(TypeError):
            replace(C, x=3)
        with self.assertRaises(TypeError):
            replace(0, x=3)

    def test_no_init(self):
        C = C_TestReplace_test_no_init
        c = C(1)
        c.y = 20
        c1 = replace(c, x=5)
        self.assertEqual((c1.x, c1.y), (5, 10))
        with self.assertRaises(ValueError):
            replace(c, x=2, y=30)
        with self.assertRaises(ValueError):
            replace(c, y=30)

    def test_classvar(self):
        C = C_TestReplace_test_classvar
        c = C(1)
        d = C(2)
        self.assertIs(c.y, d.y)
        self.assertEqual(c.y, 1000)
        with self.assertRaises(TypeError):
            replace(c, y=30)
        replace(c, x=5)

    def test_initvar_is_specified(self):
        C = C_TestReplace_test_initvar_is_specified
        c = C(1, 10)
        self.assertEqual(c.x, 10)
        with self.assertRaises(ValueError):
            replace(c, x=3)
        c = replace(c, x=3, y=5)
        self.assertEqual(c.x, 15)

    def test_recursive_repr(self):
        C = C_TestReplace_test_recursive_repr
        c = C(None)
        c.f = c
        self.assertEqual(repr(c), 'C_TestReplace_test_recursive_repr(f=...)')

    def test_recursive_repr_two_attrs(self):
        C = C_TestReplace_test_recursive_repr_two_attrs
        c = C(None, None)
        c.f = c
        c.g = c
        self.assertEqual(repr(c), 'C_TestReplace_test_recursive_repr_two_attrs(f=..., g=...)')

    def test_recursive_repr_indirection(self):
        C = C_TestReplace_test_recursive_repr_indirection
        D = D_TestReplace_test_recursive_repr_indirection
        c = C(None)
        d = D(None)
        c.f = d
        d.f = c
        self.assertEqual(repr(c), 'C_TestReplace_test_recursive_repr_indirection(f=D_TestReplace_test_recursive_repr_indirection(f=...))')

    def test_recursive_repr_indirection_two(self):
        C = C_TestReplace_test_recursive_repr_indirection_two
        D = D_TestReplace_test_recursive_repr_indirection_two
        E = E_TestReplace_test_recursive_repr_indirection_two
        c = C(None)
        d = D(None)
        e = E(None)
        c.f = d
        d.f = e
        e.f = c
        self.assertEqual(repr(c), 'C_TestReplace_test_recursive_repr_indirection_two(f=D_TestReplace_test_recursive_repr_indirection_two(f=E_TestReplace_test_recursive_repr_indirection_two(f=...)))')

    def test_recursive_repr_misc_attrs(self):
        C = C_TestReplace_test_recursive_repr_misc_attrs
        c = C(None, 1)
        c.f = c
        self.assertEqual(repr(c), 'C_TestReplace_test_recursive_repr_misc_attrs(f=..., g=1)')

class TestAbstract(unittest.TestCase):
    pass

class TestKeywordArgs(unittest.TestCase):
    pass
if __name__ == '__main__':
    unittest.main()
