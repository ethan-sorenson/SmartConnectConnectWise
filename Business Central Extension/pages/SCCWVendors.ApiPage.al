page 64053 "SSCW - Vendors"
{
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Vendor';
    EntitySetCaption = 'Vendors';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    EntityName = 'vendor';
    EntitySetName = 'vendors';
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = Vendor;
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; rec.SystemId) { Editable = false; }
                field(number; rec."No.") { }
                field(connectwiseId; rec."ConnectWise Id") { }
                field(displayName; rec.Name)
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo(Name));
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
                field(currencyCode; rec."Currency Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Currency Code"));
                    end;
                }
                field(irs1099Code; IRS1099VendorCode) { }
                field(paymentTermsCode; rec."Payment Terms Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Payment Terms Code"));
                    end;
                }
                field(paymentMethodCode; rec."Payment Method Code")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Payment Method Code"));
                    end;
                }
                field(taxLiable; rec."Tax Liable")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Tax Liable"));
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
                field(generalBusPostingGroupCode; rec."Gen. Bus. Posting Group")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Gen. Bus. Posting Group"));
                    end;
                }
                field(vendorPostingGroupCode; rec."Vendor Posting Group")
                {
                    trigger OnValidate()
                    begin
                        RegisterFieldSet(rec.FieldNo("Vendor Posting Group"));
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
                field(balance; rec."Balance (LCY)") { }
                field(lastModifiedDateTime; rec.SystemModifiedAt) { }
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
                part(_Default_Dimensions; "APIV2 - Default Dimensions")
                {
                    Caption = 'Default Dimensions';
                    EntityName = 'defaultDimension';
                    EntitySetName = 'defaultDimensions';
                    SubPageLink = ParentId = Field(SystemId), "Parent Type" = const(Vendor);
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
        Vendor: Record Vendor;
        VendorRecordRef: RecordRef;
    begin
        Vendor.SetRange("No.", rec."No.");
        if not Vendor.IsEmpty() then
            rec.Insert();

        rec.Insert(true);

        VendorRecordRef.GetTable(Rec);
        GraphMgtGeneralTools.ProcessNewRecordFromAPI(VendorRecordRef, TempFieldSet, CurrentDateTime());
        VendorRecordRef.SetTable(Rec);

        rec.Modify(true);
        SetCalculatedFields();
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    var
        Vendor: Record Vendor;
    begin
        Vendor.GetBySystemId(rec.SystemId);

        if rec."No." = Vendor."No." then
            rec.Modify(true)
        else begin
            Vendor.TransferFields(Rec, false);
            Vendor.Rename(rec."No.");
            rec.TransferFields(Vendor);
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
        PaymentMethod: Record "Payment Method";
        TempFieldSet: Record 2000000041 temporary;
        GraphMgtGeneralTools: Codeunit "Graph Mgt - General Tools";
        LCYCurrencyCode: Code[10];
        CurrencyCodeTxt: Text;
        TaxRegistrationNumber: Text[50];
        IRS1099VendorCode: Code[10];
        CurrencyValuesDontMatchErr: Label 'The currency values do not match to a specific Currency.';
        CurrencyIdDoesNotMatchACurrencyErr: Label 'The "currencyId" does not match to a Currency.', Comment = 'currencyId is a field name and should not be translated.';
        CurrencyCodeDoesNotMatchACurrencyErr: Label 'The "currencyCode" does not match to a Currency.', Comment = 'currencyCode is a field name and should not be translated.';
        PaymentTermsIdDoesNotMatchAPaymentTermsErr: Label 'The "paymentTermsId" does not match to a Payment Terms.', Comment = 'paymentTermsId is a field name and should not be translated.';
        PaymentMethodIdDoesNotMatchAPaymentMethodErr: Label 'The "paymentMethodId" does not match to a Payment Method.', Comment = 'paymentMethodId is a field name and should not be translated.';
        BlankGUID: Guid;
        BECountryCodeLbl: Label 'BE', Locked = true;

    local procedure SetCalculatedFields()
    var
        EnterpriseNoFieldRef: FieldRef;
    begin
        CurrencyCodeTxt := GraphMgtGeneralTools.TranslateNAVCurrencyCodeToCurrencyCode(LCYCurrencyCode, rec."Currency Code");

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
        Clear(IRS1099VendorCode);
        Clear(TaxRegistrationNumber);
        TempFieldSet.DeleteAll();
    end;

    local procedure RegisterFieldSet(FieldNo: Integer)
    begin
        if TempFieldSet.Get(Database::Vendor, FieldNo) then
            exit;

        TempFieldSet.Init();
        TempFieldSet.TableNo := Database::Vendor;
        TempFieldSet.Validate("No.", FieldNo);
        TempFieldSet.Insert(true);
    end;

    procedure IsEnterpriseNumber(var EnterpriseNoFieldRef: FieldRef): Boolean
    var
        VendorRecordRef: RecordRef;
    begin
        VendorRecordRef.GetTable(Rec);
        if VendorRecordRef.FieldExist(11310) then begin
            EnterpriseNoFieldRef := VendorRecordRef.Field(11310);
            exit((EnterpriseNoFieldRef.Type = FieldType::Text) and (EnterpriseNoFieldRef.Name = 'Enterprise No.'));
        end else
            exit(false);
    end;
}

