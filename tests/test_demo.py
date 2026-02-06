import allure

@allure.epic("CI流程测试")
@allure.feature("基础功能")
@allure.story("加法功能")
@allure.title("测试加法是否正确")
def test_add():
    assert 1 + 1 == 2

@allure.title("模拟失败的用例")
def test_fail():
    assert 2 + 2 == 6  # 故意失败用例
    pass_(password)
