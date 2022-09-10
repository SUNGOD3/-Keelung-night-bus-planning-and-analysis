function r = myCorrelation (x,y)
    c = cov(x,y)
    sm = triu(c, 0) + triu(c, 1).';
    r = sm(2)/std(x)*std(y)
end
