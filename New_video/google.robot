from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Set up Chrome webdriver
driver = webdriver.Chrome()


# Open Amazon website
driver.get("https://www.amazon.com")

# Search for the item you want to add to the cart
search_box = driver.find_element(By.ID, "twotabsearchtextbox")
search_box.send_keys("your item name")
search_box.submit()

# Wait for the search results page to load
WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, "search")))

# Click on the first search result
first_result = driver.find_element(By.CSS_SELECTOR, "[data-component-type='s-search-result']")
first_result.click()

# Wait for the product page to load
WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, "productTitle")))

# Add the item to the cart
add_to_cart_button = driver.find_element(By.ID, "add-to-cart-button")
add_to_cart_button.click()

# Wait for the cart page to load
WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, "hlb-subcart")))

# Close the browser
driver.quit()
