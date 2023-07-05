page 64056 "SSCW - Locations"
{
    DelayedInsert = true;
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Location';
    EntitySetCaption = 'Locations';
    PageType = API;
    ODataKeyFields = SystemId;
    EntityName = 'location';
    EntitySetName = 'locations';
    SourceTable = Location;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(id; rec.SystemId) { Editable = false; }
                field(code; rec.Code) { }
                field(connectwiseId; rec."ConnectWise Id") { }
                field(displayName; rec.Name) { }
                field(contact; rec.Contact) { }
                field(addressLine1; rec.Address) { }
                field(addressLine2; rec."Address 2") { }
                field(city; rec.City) { }
                field(state; rec.County) { }
                field(countryCode; rec."Country/Region Code") { }
                field(postalCode; rec."Post Code") { }
                field(phoneNumber; rec."Phone No.") { }
                field(email; rec."E-Mail") { }
                field(website; rec."Home Page") { }
                part(_bins; "SSCW - Bins")
                {
                    EntityName = 'bin';
                    EntitySetName = 'bins';
                    SubPageLink = "Location Code" = Field("Code");
                }
            }
        }
    }
}