#pragma implicitwith disable
page 64055 "SSCW - Sales Invoice Lines"
{
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Sales Invoice Line';
    EntitySetCaption = 'Sales Invoice Lines';
    EntityName = 'salesInvoiceLine';
    EntitySetName = 'salesInvoiceLines';
    DelayedInsert = true;
    PageType = API;
    ODataKeyFields = SystemId;
    SourceTable = "Sales Line";
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(SystemId; rec.SystemId) { Editable = false; }
                field(documentType; rec."Document Type") { }
                field(documentNumber; rec."Document No.") { }
                field(lineNumber; rec."Line No.") { }
                field(type; rec.Type) { }
                field(number; rec."No.")
                {

                    trigger OnValidate()
                    begin
                        EntityChanged := true;
                    end;
                }
                field(locationCode; rec."Location Code") { }
                field(postingGroup; rec."Posting Group") { }
                field(shipmentDate; rec."Shipment Date") { }
                field(description; rec.Description) { }
                field(description2; rec."Description 2") { }
                field(unitOfMeasure; rec."Unit of Measure") { }
                field(quantity; rec.Quantity) { }
                field(outstandingQuantity; rec."Outstanding Quantity") { }
                field(qtyToInvoice; rec."Qty. to Invoice") { }
                field(qtyToShip; rec."Qty. to Ship") { }
                field(unitPrice; rec."Unit Price") { }
                field(unitCostLcy; rec."Unit Cost (LCY)") { }
                field(vatPercent; rec."VAT %") { }
                field(lineDiscountPercent; rec."Line Discount %") { }
                field(lineDiscountAmount; rec."Line Discount Amount") { }
                field(amount; rec.Amount) { }
                field(amountIncludingVat; rec."Amount Including VAT") { }
                field(allowInvoiceDisc; rec."Allow Invoice Disc.") { }
                field(grossWeight; rec."Gross Weight") { }
                field(netWeight; rec."Net Weight") { }
                field(unitsPerParcel; rec."Units per Parcel") { }
                field(unitVolume; rec."Unit Volume") { }
                field(applToItemEntry; rec."Appl.-to Item Entry") { }
                field(shortcutDimension1Code; rec."Shortcut Dimension 1 Code") { }
                field(shortcutDimension2Code; rec."Shortcut Dimension 2 Code") { }
                field(customerPriceGroup; rec."Customer Price Group") { }
                field(jobNumber; rec."Job No.") { }
                field(workTypeCode; rec."Work Type Code") { }
                field(recalculateInvoiceDisc; rec."Recalculate Invoice Disc.") { }
                field(outstandingAmount; rec."Outstanding Amount") { }
                field(qtyShippedNotInvoiced; rec."Qty. Shipped Not Invoiced") { }
                field(shippedNotInvoiced; rec."Shipped Not Invoiced") { }
                field(quantityShipped; rec."Quantity Shipped") { }
                field(quantityInvoiced; rec."Quantity Invoiced") { }
                field(shipmentNumber; rec."Shipment No.") { }
                field(shipmentLineNumber; rec."Shipment Line No.") { }
                field(profitPercent; rec."Profit %") { }
                field(billToCustomerNumber; rec."Bill-to Customer No.") { }
                field(invDiscountAmount; rec."Inv. Discount Amount") { }
                field(purchaseOrderNumber; rec."Purchase Order No.") { }
                field(purchOrderLineNumber; rec."Purch. Order Line No.") { }
                field(dropShipment; rec."Drop Shipment") { }
                field(genBusPostingGroup; rec."Gen. Bus. Posting Group") { }
                field(genProdPostingGroup; rec."Gen. Prod. Posting Group") { }
                field(vatCalculationType; rec."VAT Calculation Type") { }
                field(transactionType; Rec."Transaction Type") { }
                field(transportMethod; Rec."Transport Method") { }
                field(attachedToLineNumber; Rec."Attached to Line No.") { }
                field(exitPoint; Rec."Exit Point") { }
                field("area"; Rec."Area") { }
                field(transactionSpecification; Rec."Transaction Specification") { }
                field(taxCategory; Rec."Tax Category") { }
                field(taxAreaCode; Rec."Tax Area Code") { }
                field(taxLiable; Rec."Tax Liable") { }
                field(taxGroupCode; Rec."Tax Group Code") { }
                field(vatClauseCode; Rec."VAT Clause Code") { }
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group") { }
                field(vatProdPostingGroup; Rec."VAT Prod. Posting Group") { }
                field(currencyCode; Rec."Currency Code") { }
                field(outstandingAmountLcy; Rec."Outstanding Amount (LCY)") { }
                field(shippedNotInvoicedLcy; Rec."Shipped Not Invoiced (LCY)") { }
                field(shippedNotInvLcyNoVat; Rec."Shipped Not Inv. (LCY) No VAT") { }
                field(reservedQuantity; Rec."Reserved Quantity") { }
                field(reserve; Rec.Reserve) { }
                field(blanketOrderNumber; Rec."Blanket Order No.") { }
                field(blanketOrderLineNumber; Rec."Blanket Order Line No.") { }
                field(vatBaseAmount; Rec."VAT Base Amount") { }
                field(unitCost; Rec."Unit Cost") { }
                field(systemCreatedEntry; Rec."System-Created Entry") { }
                field(lineAmount; Rec."Line Amount") { }
                field(vatDifference; Rec."VAT Difference") { }
                field(invDiscAmountToInvoice; Rec."Inv. Disc. Amount to Invoice") { }
                field(vatIdentifier; Rec."VAT Identifier") { }
                field(icPartnerRefType; Rec."IC Partner Ref. Type") { }
                field(icPartnerReference; Rec."IC Partner Reference") { }
                field(prepaymentPercent; Rec."Prepayment %") { }
                field(prepmtLineAmount; Rec."Prepmt. Line Amount") { }
                field(prepmtAmtInv; Rec."Prepmt. Amt. Inv.") { }
                field(prepmtAmtInclVat; Rec."Prepmt. Amt. Incl. VAT") { }
                field(prepaymentAmount; Rec."Prepayment Amount") { }
                field(prepmtVatBaseAmt; Rec."Prepmt. VAT Base Amt.") { }
                field(prepaymentVatPercent; Rec."Prepayment VAT %") { }
                field(prepmtVatCalcType; Rec."Prepmt. VAT Calc. Type") { }
                field(prepaymentVatIdentifier; Rec."Prepayment VAT Identifier") { }
                field(prepaymentTaxAreaCode; Rec."Prepayment Tax Area Code") { }
                field(prepaymentTaxLiable; Rec."Prepayment Tax Liable") { }
                field(prepaymentTaxGroupCode; Rec."Prepayment Tax Group Code") { }
                field(prepmtAmtToDeduct; Rec."Prepmt Amt to Deduct") { }
                field(prepmtAmtDeducted; Rec."Prepmt Amt Deducted") { }
                field(prepaymentLine; Rec."Prepayment Line") { }
                field(prepmtAmountInvInclVat; Rec."Prepmt. Amount Inv. Incl. VAT") { }
                field(prepmtAmountInvLcy; Rec."Prepmt. Amount Inv. (LCY)") { }
                field(icPartnerCode; Rec."IC Partner Code") { }
                field(prepmtVatAmountInvLcy; Rec."Prepmt. VAT Amount Inv. (LCY)") { }
                field(prepaymentVatDifference; Rec."Prepayment VAT Difference") { }
                field(prepmtVatDiffToDeduct; Rec."Prepmt VAT Diff. to Deduct") { }
                field(prepmtVatDiffDeducted; Rec."Prepmt VAT Diff. Deducted") { }
                field(dimensionSetId; Rec."Dimension Set ID") { }
                field(qtyToAssembleToOrder; Rec."Qty. to Assemble to Order") { }
                field(qtyToAsmToOrderBase; Rec."Qty. to Asm. to Order (Base)") { }
                field(atoWhseOutstandingQty; Rec."ATO Whse. Outstanding Qty.") { }
                field(atoWhseOutstdQtyBase; Rec."ATO Whse. Outstd. Qty. (Base)") { }
                field(jobTaskNumber; Rec."Job Task No.") { }
                field(jobContractEntryNumber; Rec."Job Contract Entry No.") { }
                field(postingDate; Rec."Posting Date") { }
                field(deferralCode; Rec."Deferral Code") { }
                field(returnsDeferralStartDate; Rec."Returns Deferral Start Date") { }
                field(variantCode; Rec."Variant Code") { }
                //custom bin code logic because ConnectWise api does not show if item is inventoriable or not.
                field(binCode; BinCodeTxt)
                {
                    trigger OnValidate()
                    var
                        Item: Record Item;
                    begin
                        Item.Get(Rec."No.");
                        if Item.IsInventoriableType() then
                            Rec."Bin Code" := BinCodeTxt
                        else
                            Rec."Bin Code" := '';
                    end;
                }
                field(qtyPerUnitOfMeasure; Rec."Qty. per Unit of Measure") { }
                field(planned; Rec.Planned) { }
                field(unitOfMeasureCode; Rec."Unit of Measure Code") { }
                field(quantityBase; Rec."Quantity (Base)") { }
                field(outstandingQtyBase; Rec."Outstanding Qty. (Base)") { }
                field(qtyToInvoiceBase; Rec."Qty. to Invoice (Base)") { }
                field(qtyToShipBase; Rec."Qty. to Ship (Base)") { }
                field(qtyShippedNotInvdBase; Rec."Qty. Shipped Not Invd. (Base)") { }
                field(qtyShippedBase; Rec."Qty. Shipped (Base)") { }
                field(qtyInvoicedBase; Rec."Qty. Invoiced (Base)") { }
                field(reservedQtyBase; Rec."Reserved Qty. (Base)") { }
                field(faPostingDate; Rec."FA Posting Date") { }
                field(depreciationBookCode; Rec."Depreciation Book Code") { }
                field(deprUntilFaPostingDate; Rec."Depr. until FA Posting Date") { }
                field(duplicateInDepreciationBook; Rec."Duplicate in Depreciation Book") { }
                field(useDuplicationList; Rec."Use Duplication List") { }
                field(responsibilityCenter; Rec."Responsibility Center") { }
                field(outOfStockSubstitution; Rec."Out-of-Stock Substitution") { }
                field(substitutionAvailable; Rec."Substitution Available") { }
                field(originallyOrderedNumber; Rec."Originally Ordered No.") { }
                field(originallyOrderedVarCode; Rec."Originally Ordered Var. Code") { }
                field(itemReferenceNumber; Rec."Item Reference No.") { }
                field(itemRefUnitOfMeasure; Rec."Item Reference Unit of Measure") { }
                field(itemReferenceType; Rec."Item Reference Type") { }
                field(itemReferenceTypeNumber; Rec."Item Reference Type No.") { }
                field(itemCategoryCode; Rec."Item Category Code") { }
                field(nonstock; Rec.Nonstock) { }
                field(purchasingCode; Rec."Purchasing Code") { }
                field(specialOrder; Rec."Special Order") { }
                field(specialOrderPurchaseNumber; Rec."Special Order Purchase No.") { }
                field(specialOrderPurchLineNumber; Rec."Special Order Purch. Line No.") { }
                field(whseOutstandingQty; Rec."Whse. Outstanding Qty.") { }
                field(whseOutstandingQtyBase; Rec."Whse. Outstanding Qty. (Base)") { }
                field(completelyShipped; Rec."Completely Shipped") { }
                field(requestedDeliveryDate; Rec."Requested Delivery Date") { }
                field(promisedDeliveryDate; Rec."Promised Delivery Date") { }
                field(shippingTime; Rec."Shipping Time") { }
                field(outboundWhseHandlingTime; Rec."Outbound Whse. Handling Time") { }
                field(plannedDeliveryDate; Rec."Planned Delivery Date") { }
                field(plannedShipmentDate; Rec."Planned Shipment Date") { }
                field(shippingAgentCode; Rec."Shipping Agent Code") { }
                field(shippingAgentServiceCode; Rec."Shipping Agent Service Code") { }
                field(allowItemChargeAssignment; Rec."Allow Item Charge Assignment") { }
                field(qtyToAssign; Rec."Qty. to Assign") { }
                field(qtyAssigned; Rec."Qty. Assigned") { }
                field(returnQtyToReceive; Rec."Return Qty. to Receive") { }
                field(returnQtyToReceiveBase; Rec."Return Qty. to Receive (Base)") { }
                field(returnQtyRcdNotInvd; Rec."Return Qty. Rcd. Not Invd.") { }
                field(retQtyRcdNotInvdBase; Rec."Ret. Qty. Rcd. Not Invd.(Base)") { }
                field(returnRcdNotInvd; Rec."Return Rcd. Not Invd.") { }
                field(returnRcdNotInvdLcy; Rec."Return Rcd. Not Invd. (LCY)") { }
                field(returnQtyReceived; Rec."Return Qty. Received") { }
                field(returnQtyReceivedBase; Rec."Return Qty. Received (Base)") { }
                field(applFromItemEntry; Rec."Appl.-from Item Entry") { }
                field(bomItemNumber; Rec."BOM Item No.") { }
                field(returnReceiptNumber; Rec."Return Receipt No.") { }
                field(returnReceiptLineNumber; Rec."Return Receipt Line No.") { }
                field(returnReasonCode; Rec."Return Reason Code") { }
                field(allowLineDisc; Rec."Allow Line Disc.") { }
                field(customerDiscGroup; Rec."Customer Disc. Group") { }
                field(subtype; Rec.Subtype) { }
                field(priceDescription; Rec."Price description") { }
                field(connectwiseId; Rec."ConnectWise id") { }
                field(shortcutDim3Code; rec."SSCW ShortcutDim3Code") { }
                field(shortcutDim4Code; rec."SSCW ShortcutDim4Code") { }
                field(shortcutDim5Code; rec."SSCW ShortcutDim5Code") { }
                field(shortcutDim6Code; rec."SSCW ShortcutDim6Code") { }
                field(shortcutDim7Code; rec."SSCW ShortcutDim7Code") { }
                field(shortcutDim8Code; rec."SSCW ShortcutDim8Code") { }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        rec.InitType();
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        if InsertExtendedText() then
            exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    begin
        if EntityChanged then
            if InsertExtendedText() then
                exit(false);
    end;

    var
        EntityChanged: Boolean;
        BinCodeTxt: Text;

    local procedure InsertExtendedText(): Boolean
    var
        SalesLine: Record "Sales Line";
        TransferExtendedText: Codeunit "Transfer Extended Text";
    begin
        if TransferExtendedText.SalesCheckIfAnyExtText(Rec, false) then begin
            if SalesLine.Get(Rec."Document Type", Rec."Document No.", Rec."Line No.") then
                Rec.Modify(true)
            else
                Rec.Insert(true);
            Commit();
            TransferExtendedText.InsertSalesExtText(Rec);
            exit(true);
        end;
        exit(false);
    end;
}

#pragma implicitwith restore
