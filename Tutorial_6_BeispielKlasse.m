classdef Tutorial_6_BeispielKlasse %< handle
%% Eigenschaften
    properties (Access = public)
        wert1
    end
    
    properties (Access = protected)
        wert2 = 5;
    end
    
%% Methoden
    methods
        % Konstruktor
        function self = BeispielKlasse(val)
            self.wert1 = val;
        end
        
        % weitere Methoden
        function r = abrunden(self)
            r = floor(self.wert1);
            %self.Value = r;
        end
    end
end