function times = testCpu()
    times = [5; 10; 50; 100; 200; 500; 1000; 1500; 2000; 2500; 5000; 7500; 12500];
    for i = 1:13
        b = 0;
        A = ones(times(i,1));
        for j = 1:times(i,1);
            b(j) = 1;
        end
        b = b';
        tic;
        mvcol(times(i,1),A,b);
        times(i,2) = toc;
        tic;
        mvrow(times(i,1),A,b);
        times(i,3) = toc;
        tic;
        backcol(A, b);
        times(i,4) = toc;
        tic;
        backrow(A, b);
        times(i, 5) = toc;
    end
    
    plot(times(:,1), times(:,3));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Mvrow CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'mvrowextendedplot');
    
    plot(times(:,1), times(:,2));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Mvcol CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'mvcolextendedplot');
    
    plot(times(:,1), times(:,2), times(:,1), times(:,3));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Mvcol vs Mvrow CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'mvcolmvrowplot');
    
    plot(times(:,1), times(:,4), times(:,1), times(:,5));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Backcol vs Backrow CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'backcolbackrowplot');
    
    plot(times(:,1), times(:,4));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Backcol CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'backcolextendedplot');
    
    plot(times(:,1), times(:,5));
    xlabel('Matrix Order');
    ylabel('Time(s)');
    title('Backrow CPU Time');
    fig1 = gcf;
    print(fig1, '-djpeg', 'backrowextendedplot');