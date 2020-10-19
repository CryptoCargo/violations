pragma solidity =0.6.0;

contract Violations 
{
    int public violationD; //public--stores violations--getters autogenerated
    
    //event to be emitted for each type of violation when violation is recorded 
    event TempVUpdate(int violation);
    event OpenVUpdate(int violation);
    event LightVUpdate(int violation);
    event HumidityVUpdate(int violation);
    event GpsVUpdate(int violation);

    // 5 violations: temperature,open/close,light,humidity,gps
    // sent directly from arduino in encoded format
    function add_TempV(int vData) public
    {
        violationD=vData;
        emit TempVUpdate (vData);
    }
    
    function add_OpenV(int vData) public
    {
        violationD=vData;
        emit OpenVUpdate (vData);
    }
    
    function add_LightV(int vData) public
    {
        violationD=vData;
        emit LightVUpdate (vData);
    }
    
    function add_HumidityV(int vData) public
    {
        violationD=vData;
        emit HumidityVUpdate (vData);
    }
    
    function add_GpsV(int vData) public
    {
        violationD=vData;
        emit GpsVUpdate (vData);
    }
    
}
