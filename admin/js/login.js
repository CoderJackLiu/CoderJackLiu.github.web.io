document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.getElementById('loginForm');
    if (loginForm) {
        loginForm.addEventListener('submit', function(event) {
            event.preventDefault();
            
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
        
            // 固定的账号密码
            const validUsername = '1';
            const validPassword = '1';
        
            if (username === validUsername && password === validPassword) {
                window.location.href = '/admin/edit'; // 跳转到编辑页
            } else {
                showErrorMessage('账号或密码错误');

            }
        });
    }
});

function showErrorMessage(message) {
    const errorMessage = document.createElement('div');
    errorMessage.className = 'error-message';
    errorMessage.innerText = message;
    document.body.appendChild(errorMessage);

    setTimeout(function() {
        errorMessage.remove();
    }, 1000);
}