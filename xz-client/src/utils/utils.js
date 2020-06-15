// 带失效时间本地存储赋值
export function setLocalStorage(key, value, ttl_ms) {
    let data = { value: value, expirse: new Date(ttl_ms).getTime() };
    localStorage.setItem(key, JSON.stringify(data));
}

// 获取本地存储👆
export function getLocalStorage(key) {
    let data = JSON.parse(localStorage.getItem(key));
    if (data !== null) {
        if (data.expirse != null && data.expirse < new Date().getTime()) {
            localStorage.removeItem(key);
        } else {
            return data.value;
        }
    }
    return null;
}