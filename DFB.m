% the integrated DFB function producing cell output
% DFBtype = 'r' for regular, 'h' for horizantal, and 'v' for vertical
%
% Ramin Eslami 2005

function Y = DFB(x, lhat, DFBtype)

if nargin < 3, DFBtype = 'r'; end

switch DFBtype
    case 'r'
        switch lhat
    
            case 0
                Y = x;
            case 2
                Y = dfb_2s(x, 1);
            case 3
                Y = dfb_3s(x, 1);
            case 4
                Y = dfb_4s(x, 1);
        end
        
    case 'h'
        switch lhat

            case 0
                Y = x;
            case 2
                Y = dfb_2_hs(x, 1);
            case 3
                Y = dfb_3_hs(x, 1);
            case 4
                Y = dfb_4_hs(x, 1);
        end
        
    case 'v'
        switch lhat

            case 0
                Y = x;
            case 2
                Y = dfb_2_vs(x, 1);
            case 3
                Y = dfb_3_vs(x, 1);
            case 4
                Y = dfb_4_vs(x, 1);
        end
       
end