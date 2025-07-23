# test_main.py


import allure
@allure.epic("CI验证")
@allure.feature("简单功能")
@allure.story("加法功能")
@allure.title("测试1 + 1 == 2")
def test_demo():
    assert 1 + 1 == 2
