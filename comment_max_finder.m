function max_finder(varargin)
% این تابع مقدار ماکزیمم یک تابع رو در اطراف یک نقطه شروع به‌صورت عددی پیدا می‌کنه
% استفاده:
%   max_finder(f)             -> جستجو اطراف 0 با بازه اولیه 10
%   max_finder(f, x0)         -> جستجو اطراف x0
%   max_finder(f, x0, epsilon)-> جستجو با بازه دلخواه

    epsilon = 10;        % بازه اولیه جستجو
    idx = 0;             % نقطه شروع جستجو
    f = 0;               % تابع ورودی

    % پردازش ورودی‌ها
    if nargin == 3
        f = varargin{1};
        idx = varargin{2};
        epsilon = varargin{3};
    elseif nargin == 2
        f = varargin{1};
        idx = varargin{2};
    elseif nargin == 1
        f = varargin{1};
    else
        error('حداقل باید تابع f را به عنوان ورودی بدهید.');
    end

    ymax = 0;  % مقدار ماکزیمم
    lin = linspace(idx - epsilon, idx + epsilon);  % بازه اولیه

    for i = 1:10
        points = double(f(lin));  % محاسبه مقدار تابع در نقاط مختلف
        [ymax, maxIdx] = max(points);  % یافتن بیشترین مقدار
        idx = lin(maxIdx);             % به‌روزرسانی مرکز جستجو
        epsilon = epsilon / 2;         % کاهش بازه برای دقت بیشتر
        lin = linspace(idx - epsilon, idx + epsilon);  % بازه جدید
    end

    % چاپ نتیجه
    fprintf('Max value: %.6f at x = %.18f\n', ymax, idx);
end
