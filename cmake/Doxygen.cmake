function(enable_doxygen)
    message("-- checking for doxygen")
    option(ENABLE_DOXYGEN "Enable doxygen doc builds of source" ON)
    if(ENABLE_DOXYGEN)
        message("-- using doxygen")
        set(DOXYGEN_CALLER_GRAPH ON)
        set(DOXYGEN_CALL_GRAPH ON)
        set(DOXYGEN_EXTRACT_ALL ON)
        find_package(Doxygen REQUIRED dot)
        doxygen_add_docs(doxygen_docs ${PROJECT_SOURCE_DIR})
    endif()    
endfunction(enable_doxygen)