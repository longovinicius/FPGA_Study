entity ENTYPE is
end ENTYPE;

architecture arch of ENTYPE is
    type MY_OWN is (RED, GREEN, BLUE, WHITE);
    signal MY_SIGNAL    : MY_OWN;
    signal OTHER_SIGNAL : MY_OWN;

begin
    MY_SIGNAL <= RED;
    -- MY_SIGNAL <= '0'; -- not possible since its not the same type
    MY_SIGNAL <= OTHER_SIGNAL;
end arch;