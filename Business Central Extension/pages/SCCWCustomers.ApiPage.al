page 64052 "SCCW - Customers"
{
    APIVersion = 'v2.0';
    EntityCaption = 'Customer';
    EntitySetCaption = 'Customers';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityName = 'customer';
    EntitySetName = 'customers';
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = Customer;
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; rec.SystemId) { Editable = false; }
                field(number; rec."No.")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("No."));
                    end;
                }
                field(connectwiseId; rec."ConnectWise Id")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("ConnectWise Id"));
                    end;
                }
                field(displayName; rec.Name)
                {
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        if rec.Name = '' then
                            Error(BlankCustomerNameErr);
                        RegisterFieldSet(rec.FieldNo(Name));
                    end;
                }
                field(name2; rec."Name 2")
                {

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Name 2"));
                    end;
                }
                field(type; rec."Contact Type")
                {

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Contact Type"));
                    end;
                }
                field(addressLine1; rec.Address)
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Address"));
                    end;
                }
                field(addressLine2; rec."Address 2")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Address 2"));
                    end;
                }
                field(city; rec.City)
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("City"));
                    end;
                }
                field(county; rec.County)
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("County"));
                    end;
                }
                field(countryCode; rec."Country/Region Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Country/Region Code"));
                    end;
                }
                field(postalCode; rec."Post Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Post Code"));
                    end;
                }
                field(phoneNumber; rec."Phone No.")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Phone No."));
                    end;
                }
                field(email; rec."E-Mail")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("E-Mail"));
                    end;
                }
                field(website; rec."Home Page")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Home Page"));
                    end;
                }
                field(salespersonCode; rec."Salesperson Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Salesperson Code"));
                    end;
                }
                field(balanceDue; rec."Balance Due") { Editable = false; }
                field(creditLimit; rec."Credit Limit (LCY)")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Credit Limit (LCY)"));
                    end;
                }
                field(taxLiable; rec."Tax Liable")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Tax Liable"));
                    end;
                }
                field(taxAreaCode; rec."Tax Area Code")
                {
                    trigger OnValidate()
                    begin

                        RegisterFieldSet(rec.FieldNo("Tax Area Code"))
                    end;
                }
                field(taxAreaDisplayName; TaxAreaDisplayNameGlobal) { Editable = false; }
                field(taxRegistrationNumber; TaxRegistrationNumber)
                {
                    trigger OnValidate()
                    var
                        EnterpriseNoFieldRef: FieldRef;
                    begin
                        if IsEnterpriseNumber(EnterpriseNoFieldRef) then begin
                            if (Rec."Country/Region Code" <> BECountryCodeLbl) and (Rec."Country/Region Code" <> '') then begin
                                Rec.Validate("VAT Registration No.", TaxRegistrationNumber);
                                RegisterFieldSet(rec.FieldNo("VAT Registration No."));
                            end else begin
                                EnterpriseNoFieldRef.Validate(TaxRegistrationNumber);
                                EnterpriseNoFieldRef.Record().SetTable(Rec);
                                RegisterFieldSet(rec.FieldNo("VAT Registration No."));
                            end;
                        end else begin
                            Rec.Validate("VAT Registration No.", TaxRegistrationNumber);
                            RegisterFieldSet(rec.FieldNo("VAT Registration No."));
                        end;
                    end;
                }
                field(currencyCode; CurrencyCodeTxt)
                {

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Currency Code"));
                    end;
                }
                field(paymentTermsCode; rec."Payment Terms Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Payment Terms Code"));
                    end;
                }
                field(shipmentMethodCode; rec."Shipment Method Code")
                {
                    trigger OnValidate()
                    begin

                        RegisterFieldSet(rec.FieldNo("Shipment Method Code"));
                    end;
                }
                field(paymentMethodCode; rec."Payment Method Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Payment Method Code"));
                    end;
                }
                field(generalBusPostingGroupCode; rec."Gen. Bus. Posting Group")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Gen. Bus. Posting Group"));
                    end;
                }
                field(customerPostingGroupCode; rec."Customer Posting Group")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Customer Posting Group"));
                    end;
                }
                field(vatBusPostingGroupCode; rec."VAT Bus. Posting Group")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("VAT Bus. Posting Group"));
                    end;
                }
                field(primaryContactNumber; rec."Primary Contact No.")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Primary Contact No."));
                    end;
                }
                field(contactName; rec.Contact)
                {

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Contact"));
                    end;
                }
                field(EORINumber; rec."EORI Number")
                {

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("EORI Number"));
                    end;
                }
                field(shortcutDimension1Code; rec."Global Dimension 1 Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Global Dimension 1 Code"));
                    end;
                }
                field(shortcutDimension2Code; rec."Global Dimension 2 Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Global Dimension 2 Code"));
                    end;
                }
                field(shortcutDim3Code; rec."SSCW ShortcutDim3Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim3Code"));
                    end;
                }
                field(shortcutDim4Code; rec."SSCW ShortcutDim4Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim4Code"));
                    end;
                }
                field(shortcutDim5Code; rec."SSCW ShortcutDim5Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim5Code"));
                    end;
                }
                field(shortcutDim6Code; rec."SSCW ShortcutDim6Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim6Code"));
                    end;
                }
                field(shortcutDim7Code; rec."SSCW ShortcutDim7Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim7Code"));
                    end;
                }
                field(shortcutDim8Code; rec."SSCW ShortcutDim8Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("SSCW ShortcutDim8Code"));
                    end;
                }
                field(blocked; rec.Blocked)
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo(Blocked));
                    end;
                }
                field(locationCode; rec."Location Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Location Code"));
                    end;
                }
                field(lastModifiedDateTime; rec.SystemModifiedAt) { }
                part(_Default_Dimensions; "APIV2 - Default Dimensions")
                {
                    Caption = 'Default Dimensions';
                    EntityName = 'defaultDimension';
                    EntitySetName = 'defaultDimensions';
                    SubPageLink = ParentId = Field(SystemId), "Parent Type" = const(Customer);
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        SetCalculatedFields();
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        Customer: Record Customer;
        CustomerRecordRef: RecordRef;
    begin
        if rec.Name = '' then
            Error(NotProvidedCustomerNameErr);

        Customer.SetRange("No.", rec."No.");
        if not Customer.IsEmpty() then
            rec.Insert();

        rec.Insert(true);

        CustomerRecordRef.GetTable(Rec);
        GraphMgtGeneralTools.ProcessNewRecordFromAPI(CustomerRecordRef, TempFieldSet, CurrentDateTime());
        CustomerRecordRef.SetTable(Rec);

        rec.Modify(true);
        SetCalculatedFields();
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    var
        Customer: Record Customer;
    begin
        Customer.GetBySystemId(rec.systemId);

        if rec."No." = Customer."No." then
            rec.Modify(true)
        else begin
            Customer.TransferFields(Rec, false);
            Customer.Rename(rec."No.");
            rec.TransferFields(Customer);
        end;

        SetCalculatedFields();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        ClearCalculatedFields();
    end;

    var
        Currency: Record Currency;
        PaymentTerms: Record "Payment Terms";
        ShipmentMethod: Record "Shipment Method";
        PaymentMethod: Record "Payment Method";
        TempFieldSet: Record 2000000041 temporary;
        GraphMgtGeneralTools: Codeunit "Graph Mgt - General Tools";
        LCYCurrencyCode: Code[10];
        TaxRegistrationNumber: Text[50];
        CurrencyCodeTxt: Text;
        TaxAreaDisplayNameGlobal: Text;
        CurrencyValuesDontMatchErr: Label 'The currency values do not match to a specific Currency.';
        CurrencyIdDoesNotMatchACurrencyErr: Label 'The "currencyId" does not match to a Currency.', Comment = 'currencyId is a field name and should not be translated.';
        CurrencyCodeDoesNotMatchACurrencyErr: Label 'The "currencyCode" does not match to a Currency.', Comment = 'currencyCode is a field name and should not be translated.';
        PaymentTermsIdDoesNotMatchAPaymentTermsErr: Label 'The "paymentTermsId" does not match to a Payment Terms.', Comment = 'paymentTermsId is a field name and should not be translated.';
        ShipmentMethodIdDoesNotMatchAShipmentMethodErr: Label 'The "shipmentMethodId" does not match to a Shipment Method.', Comment = 'shipmentMethodId is a field name and should not be translated.';
        PaymentMethodIdDoesNotMatchAPaymentMethodErr: Label 'The "paymentMethodId" does not match to a Payment Method.', Comment = 'paymentMethodId is a field name and should not be translated.';
        BlankGUID: Guid;
        NotProvidedCustomerNameErr: Label 'A "displayName" must be provided.', Comment = 'displayName is a field name and should not be translated.';
        BlankCustomerNameErr: Label 'The blank "displayName" is not allowed.', Comment = 'displayName is a field name and should not be translated.';
        BECountryCodeLbl: Label 'BE', Locked = true;

    local procedure SetCalculatedFields()
    var
        TaxAreaBuffer: Record "Tax Area Buffer";
        EnterpriseNoFieldRef: FieldRef;
    begin
        CurrencyCodeTxt := GraphMgtGeneralTools.TranslateNAVCurrencyCodeToCurrencyCode(LCYCurrencyCode, rec."Currency Code");
        TaxAreaDisplayNameGlobal := TaxAreaBuffer.GetTaxAreaDisplayName(rec."Tax Area ID");

        if IsEnterpriseNumber(EnterpriseNoFieldRef) then begin
            if (Rec."Country/Region Code" <> BECountryCodeLbl) and (Rec."Country/Region Code" <> '') then
                TaxRegistrationNumber := Rec."VAT Registration No."
            else
                TaxRegistrationNumber := EnterpriseNoFieldRef.Value();
        end else
            TaxRegistrationNumber := Rec."VAT Registration No.";
    end;

    local procedure ClearCalculatedFields()
    begin
        Clear(rec.SystemId);
        Clear(TaxAreaDisplayNameGlobal);
        Clear(TaxRegistrationNumber);
        TempFieldSet.DeleteAll();
    end;

    local procedure RegisterFieldSet(FieldNo: Integer)
    begin
        if TempFieldSet.Get(Database::Customer, FieldNo) then
            exit;

        TempFieldSet.Init();
        TempFieldSet.TableNo := Database::Customer;
        TempFieldSet.Validate("No.", FieldNo);
        TempFieldSet.Insert(true);
    end;

    procedure IsEnterpriseNumber(var EnterpriseNoFieldRef: FieldRef): Boolean
    var
        CustomerRecordRef: RecordRef;
    begin
        CustomerRecordRef.GetTable(Rec);
        if CustomerRecordRef.FieldExist(11310) then begin
            EnterpriseNoFieldRef := CustomerRecordRef.Field(11310);
            exit((EnterpriseNoFieldRef.Type = FieldType::Text) and (EnterpriseNoFieldRef.Name = 'Enterprise No.'));
        end else
            exit(false);
    end;
}

