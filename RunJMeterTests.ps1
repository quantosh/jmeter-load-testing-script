Write-Host "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄" -ForegroundColor Green
Write-Host @" 
█                                                                                                                            █
█                    ***                                                                                                     █   
█                  ******                                                                                                    █
█                 *******                                                                                                    █
█                *******                                                                                                     █
█               ********                                                                                                     █
█             *********                 _____        _____ _    _ ______        _ __  __ ______ _______ ______ _____         █ 
█           **********            /\   |  __ \ /\   / ____| |  | |  ____|      | |  \/  |  ____|__   __|  ____|  __ \  TM    █
█          **********            /  \  | |__) /  \ | |    | |__| | |__         | | \  / | |__     | |  | |__  | |__) |       █
█         **********            / /\ \ |  ___/ /\ \| |    |  __  |  __|    _   | | |\/| |  __|    | |  |  __| |  _  /        █
█        **********            / ____ \| |  / ____ | |____| |  | | |____  | |__| | |  | | |____   | |  | |____| | \ \        █      
█       **********            /_/    \_|_| /_/    \_\_____|_|  |_|______|  \____/|_|  |_|______|  |_|  |______|_|  \_\       █       
█       ********                                                                                                             █
█      ,,,,,,,                                                                                                               █
█      ,,,,,                  Version: 0.1                                                                                   █
█      ,                      Author: Ismael Barea Insua                                                                     █
█     ,                                                                                                                      █                    
█                                                                                                                            █                                                               
"@     -ForegroundColor Green
Write-Host "█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█" -ForegroundColor Green

# Display menu options
Write-Host ""
Write-Host "Select a test to run:"
Write-Host ""
Write-Host "[GET]" -ForegroundColor Blue
Write-Host "  1. Get 10000 mapping relations"
Write-Host ""
Write-Host "[POST]" -ForegroundColor Green
Write-Host "  2. Create 1000 single mapping relations"
Write-Host "  3. Create a mapping relation of 300 identifiers"
Write-Host ""
Write-Host "[PATCH]" -ForegroundColor DarkYellow
Write-Host "  4. Update 1000 single mapping relations"
Write-Host "  5. Update a mapping relation of 300 identifiers"
Write-Host ""
Write-Host "[DELETE]" -ForegroundColor Red
Write-Host "  6. Delete 1000 single mapping relations"
Write-Host "  7. Delete a mapping relation of 300 identifiers"
Write-Host ""

$choice = Read-Host "Enter the number of your choice:"
$testFile = switch ($choice) {
    1 { "[API]_Get_10000_mapping_relations.jmx" }
    2 { "[API]_Create_1000_single_mapping_relations.jmx" }
    3 { "[API]_Create_a_mapping_relation_of_300_identifiers.jmx" }
    4 { "[API]_Update_1000_single_mapping_relations.jmx" }
    5 { "[API]_Update_a_mapping_relation_of_300_identifiers.jmx" }
    6 { "[API]_Delete_1000_single_mapping_relations.jmx" }
    7 { "[API]_Delete_a_mapping_relation_of_300_identifiers.jmx" }
    default { throw "Invalid choice" }
}

$numUsers = Read-Host "Enter the number of users for ${testFile}:"
$testIdentifiers = Read-Host "Enter the value for TestIdentifiers:"

# Run JMeter test with selected file, number of users, and TestIdentifiers value
Start-Process -Wait -FilePath "C:\devagr\U4IMA.Performance\jmeter\bin\jmeter.bat" -ArgumentList "-n -t ../../tests/${testFile} -l results.csv -JTestUsers=${numUsers} -JTestIdentifiers=${testIdentifiers}"

$title = "[API][DELETE]"
$message = "Do you want to execute [DELETE] on [API]_Get_10000_mapping_relations.jmx?"

$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", `
    "Deletes all the files in the folder."

$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", `
    "Retains all the files in the folder."

$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)

$result = $host.ui.PromptForChoice($title, $message, $options, 0)

switch ($result)
    {
        0 {"You selected Yes."}
        1 {"You selected No."}
    }


# Test de Ramón
# C:\devagr\U4IMA.Performance\jmeter\bin>jmeter -n -t ../../tests/[API]_Get_10000_mapping_relations.jmx -l results_get.csv -JTestUsers=3
# C:\devagr\U4IMA.Performance\jmeter\bin>jmeter -n -t ../../tests/[API]_Create_1000_single_mapping_relations.jmx -l results_creates.csv -JTestUsers=3
# C:\devagr\U4IMA.Performance\jmeter\bin>jmeter -n -t ../../tests/[API]_Create_a_mapping_relation_of_300_identifiers.jmx -l results_create.csv -JTestIdentifiers=3