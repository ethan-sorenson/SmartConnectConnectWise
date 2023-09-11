#pragma implicitwith disable
page 64064 "SSCW - Purchase Invoice Lines"
{
    DelayedInsert = true;
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Purchase Invoice Line';
    EntitySetCaption = 'Purchase Invoice Lines';
    PageType = API;
    ODataKeyFields = SystemId;
    EntityName = 'purchaseInvoiceLine';
    EntitySetName = 'purchaseInvoiceLines';
    SourceTable = "Purchase Line";
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(SystemId; rec.SystemId) { Editable = false; }
                field(documentType; rec."Document Type") { }
                field(buyFromVendorNumber; rec."Buy-from Vendor No.") { }
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
                field(expectedReceiptDate; rec."Expected Receipt Date") { }
                field(description; rec.Description) { }
                field(description2; rec."Description 2") { }
                field(unitOfMeasure; rec."Unit of Measure") { }
                field(quantity; rec.Quantity) { }
                field(outstandingQuantity; rec."Outstanding Quantity") { }
                field(qtyToInvoice; rec."Qty. to Invoice") { }
                field(qtyToReceive; rec."Qty. to Receive") { }
                field(directUnitCost; rec."Direct Unit Cost") { }
                field(unitCostLcy; rec."Unit Cost (LCY)") { }
                field(vatPercent; rec."VAT %") { }
                field(lineDiscountPercent; rec."Line Discount %") { }
                field(lineDiscountAmount; rec."Line Discount Amount") { }
                field(amount; rec.Amount) { }
                field(amountIncludingVat; rec."Amount Including VAT") { }
                field(unitPriceLcy; rec."Unit Price (LCY)") { }
                field(allowInvoiceDisc; rec."Allow Invoice Disc.") { }
                field(grossWeight; rec."Gross Weight") { }
                field(netWeight; rec."Net Weight") { }
                field(unitsPerParcel; rec."Units per Parcel") { }
                field(unitVolume; rec."Unit Volume") { }
                field(applToItemEntry; rec."Appl.-to Item Entry") { }
                field(jobNumber; rec."Job No.") { }
                field(indirectCostPercent; rec."Indirect Cost %") { }
                field(recalculateInvoiceDisc; rec."Recalculate Invoice Disc.") { }
                field(outstandingAmount; rec."Outstanding Amount") { }
                field(qtyRcdNotInvoiced; rec."Qty. Rcd. Not Invoiced") { }
                field(amtRcdNotInvoiced; rec."Amt. Rcd. Not Invoiced") { }
                field(quantityReceived; rec."Quantity Received") { }
                field(quantityInvoiced; rec."Quantity Invoiced") { }
                field(receiptNumber; rec."Receipt No.") { }
                field(receiptLineNumber; rec."Receipt Line No.") { }
                field(profitPercent; rec."Profit %") { }
                field(payToVendorNumber; rec."Pay-to Vendor No.") { }
                field(invDiscountAmount; rec."Inv. Discount Amount") { }
                field(vendorItemNumber; rec."Vendor Item No.") { }
                field(salesOrderNumber; rec."Sales Order No.") { }
                field(salesOrderLineNumber; rec."Sales Order Line No.") { }
                field(dropShipment; rec."Drop Shipment") { }
                field(genBusPostingGroup; rec."Gen. Bus. Posting Group") { }
                field(genProdPostingGroup; rec."Gen. Prod. Posting Group") { }
                field(vatCalculationType; rec."VAT Calculation Type") { }
                field(transactionType; rec."Transaction Type") { }
                field(transportMethod; rec."Transport Method") { }
                field(attachedToLineNumber; rec."Attached to Line No.") { }
                field(entryPoint; rec."Entry Point") { }
                field("area"; rec.Area) { }
                field(transactionSpecification; rec."Transaction Specification") { }
                field(taxAreaCode; rec."Tax Area Code") { }
                field(taxLiable; rec."Tax Liable") { }
                field(taxGroupCode; rec."Tax Group Code") { }
                field(useTax; rec."Use Tax") { }
                field(vatBusPostingGroup; rec."VAT Bus. Posting Group") { }
                field(vatProdPostingGroup; rec."VAT Prod. Posting Group") { }
                field(currencyCode; rec."Currency Code") { }
                field(outstandingAmountLcy; rec."Outstanding Amount (LCY)") { }
                field(amtRcdNotInvoicedLcy; rec."Amt. Rcd. Not Invoiced (LCY)") { }
                field(reservedQuantity; rec."Reserved Quantity") { }
                field(blanketOrderNumber; rec."Blanket Order No.") { }
                field(blanketOrderLineNumber; rec."Blanket Order Line No.") { }
                field(vatBaseAmount; rec."VAT Base Amount") { }
                field(unitCost; rec."Unit Cost") { }
                field(systemCreatedEntry; rec."System-Created Entry") { }
                field(lineAmount; rec."Line Amount") { }
                field(vatDifference; rec."VAT Difference") { }
                field(invDiscAmountToInvoice; rec."Inv. Disc. Amount to Invoice") { }
                field(vatIdentifier; rec."VAT Identifier") { }
                field(icPartnerRefType; rec."IC Partner Ref. Type") { }
                field(icPartnerReference; rec."IC Partner Reference") { }
                field(prepaymentPercent; rec."Prepayment %") { }
                field(prepmtLineAmount; rec."Prepmt. Line Amount") { }
                field(prepmtAmtInv; rec."Prepmt. Amt. Inv.") { }
                field(prepmtAmtInclVat; rec."Prepmt. Amt. Incl. VAT") { }
                field(prepaymentAmount; rec."Prepayment Amount") { }
                field(prepmtVatBaseAmt; rec."Prepmt. VAT Base Amt.") { }
                field(prepaymentVatPercent; rec."Prepayment VAT %") { }
                field(prepmtVatCalcType; rec."Prepmt. VAT Calc. Type") { }
                field(prepaymentVatIdentifier; rec."Prepayment VAT Identifier") { }
                field(prepaymentTaxAreaCode; rec."Prepayment Tax Area Code") { }
                field(prepaymentTaxLiable; rec."Prepayment Tax Liable") { }
                field(prepaymentTaxGroupCode; rec."Prepayment Tax Group Code") { }
                field(prepmtAmtToDeduct; rec."Prepmt Amt to Deduct") { }
                field(prepmtAmtDeducted; rec."Prepmt Amt Deducted") { }
                field(prepaymentLine; rec."Prepayment Line") { }
                field(prepmtAmountInvInclVat; rec."Prepmt. Amount Inv. Incl. VAT") { }
                field(prepmtAmountInvLcy; rec."Prepmt. Amount Inv. (LCY)") { }
                field(icPartnerCode; rec."IC Partner Code") { }
                field(prepmtVatAmountInvLcy; rec."Prepmt. VAT Amount Inv. (LCY)") { }
                field(prepaymentVatDifference; rec."Prepayment VAT Difference") { }
                field(prepmtVatDiffToDeduct; rec."Prepmt VAT Diff. to Deduct") { }
                field(prepmtVatDiffDeducted; rec."Prepmt VAT Diff. Deducted") { }
                field(outstandingAmtExVatLcy; rec."Outstanding Amt. Ex. VAT (LCY)") { }
                field(aRcdNotInvExVatLcy; rec."A. Rcd. Not Inv. Ex. VAT (LCY)") { }
                field(jobTaskNumber; rec."Job Task No.") { }
                field(jobLineType; rec."Job Line Type") { }
                field(jobUnitPrice; rec."Job Unit Price") { }
                field(jobTotalPrice; rec."Job Total Price") { }
                field(jobLineAmount; rec."Job Line Amount") { }
                field(jobLineDiscountAmount; rec."Job Line Discount Amount") { }
                field(jobLineDiscountPercent; rec."Job Line Discount %") { }
                field(jobUnitPriceLcy; rec."Job Unit Price (LCY)") { }
                field(jobTotalPriceLcy; rec."Job Total Price (LCY)") { }
                field(jobLineAmountLcy; rec."Job Line Amount (LCY)") { }
                field(jobLineDiscAmountLcy; rec."Job Line Disc. Amount (LCY)") { }
                field(jobCurrencyFactor; rec."Job Currency Factor") { }
                field(jobCurrencyCode; rec."Job Currency Code") { }
                field(jobPlanningLineNumber; rec."Job Planning Line No.") { }
                field(jobRemainingQty; rec."Job Remaining Qty.") { }
                field(jobRemainingQtyBase; rec."Job Remaining Qty. (Base)") { }
                field(deferralCode; rec."Deferral Code") { }
                field(returnsDeferralStartDate; rec."Returns Deferral Start Date") { }
                field(prodOrderNumber; rec."Prod. Order No.") { }
                field(variantCode; rec."Variant Code") { }
                field(binCode; rec."Bin Code")
                {
                    trigger OnValidate()
                    var
                        Item: Record Item;
                    begin
                        Item.Get(Rec."No.");
                        //handle scenarios where service items have a bin linked
                        if Item.IsInventoriableType() then
                            Rec."Bin Code" := BinCodeTxt
                        else
                            Rec."Bin Code" := '';
                    end;
                }
                field(qtyPerUnitOfMeasure; rec."Qty. per Unit of Measure") { }
                field(unitOfMeasureCode; Rec."Unit of Measure Code") { }
                field(quantityBase; Rec."Quantity (Base)") { }
                field(outstandingQtyBase; Rec."Outstanding Qty. (Base)") { }
                field(qtyToInvoiceBase; Rec."Qty. to Invoice (Base)") { }
                field(qtyToReceiveBase; Rec."Qty. to Receive (Base)") { }
                field(qtyRcdNotInvoicedBase; Rec."Qty. Rcd. Not Invoiced (Base)") { }
                field(qtyReceivedBase; Rec."Qty. Received (Base)") { }
                field(qtyInvoicedBase; Rec."Qty. Invoiced (Base)") { }
                field(reservedQtyBase; Rec."Reserved Qty. (Base)") { }
                field(faPostingDate; Rec."FA Posting Date") { }
                field(faPostingType; Rec."FA Posting Type") { }
                field(depreciationBookCode; Rec."Depreciation Book Code") { }
                field(salvageValue; Rec."Salvage Value") { }
                field(deprUntilFaPostingDate; Rec."Depr. until FA Posting Date") { }
                field(deprAcquisitionCost; Rec."Depr. Acquisition Cost") { }
                field(maintenanceCode; Rec."Maintenance Code") { }
                field(insuranceNumber; Rec."Insurance No.") { }
                field(budgetedFaNumber; Rec."Budgeted FA No.") { }
                field(duplicateInDepreciationBook; Rec."Duplicate in Depreciation Book") { }
                field(useDuplicationList; Rec."Use Duplication List") { }
                field(responsibilityCenter; Rec."Responsibility Center") { }
                field(itemReferenceNumber; Rec."Item Reference No.") { }
                field(itemRefUnitOfMeasure; Rec."Item Reference Unit of Measure") { }
                field(itemReferenceType; Rec."Item Reference Type") { }
                field(itemReferenceTypeNumber; Rec."Item Reference Type No.") { }
                field(itemCategoryCode; Rec."Item Category Code") { }
                field(nonstock; Rec.Nonstock) { }
                field(purchasingCode; Rec."Purchasing Code") { }
                field(specialOrder; Rec."Special Order") { }
                field(specialOrderSalesNumber; Rec."Special Order Sales No.") { }
                field(specialOrderSalesLineNumber; Rec."Special Order Sales Line No.") { }
                field(whseOutstandingQtyBase; Rec."Whse. Outstanding Qty. (Base)") { }
                field(completelyReceived; Rec."Completely Received") { }
                field(requestedReceiptDate; Rec."Requested Receipt Date") { }
                field(promisedReceiptDate; Rec."Promised Receipt Date") { }
                field(leadTimeCalculation; Rec."Lead Time Calculation") { }
                field(inboundWhseHandlingTime; Rec."Inbound Whse. Handling Time") { }
                field(plannedReceiptDate; Rec."Planned Receipt Date") { }
                field(orderDate; Rec."Order Date") { }
                field(allowItemChargeAssignment; Rec."Allow Item Charge Assignment") { }
                field(qtyToAssign; Rec."Qty. to Assign") { }
                field(qtyAssigned; Rec."Qty. Assigned") { }
                field(returnQtyToShip; Rec."Return Qty. to Ship") { }
                field(returnQtyToShipBase; Rec."Return Qty. to Ship (Base)") { }
                field(returnQtyShippedNotInvd; Rec."Return Qty. Shipped Not Invd.") { }
                field(retQtyShpdNotInvdBase; Rec."Ret. Qty. Shpd Not Invd.(Base)") { }
                field(returnShpdNotInvd; Rec."Return Shpd. Not Invd.") { }
                field(returnShpdNotInvdLcy; Rec."Return Shpd. Not Invd. (LCY)") { }
                field(returnQtyShipped; Rec."Return Qty. Shipped") { }
                field(returnQtyShippedBase; Rec."Return Qty. Shipped (Base)") { }
                field(returnShipmentNumber; Rec."Return Shipment No.") { }
                field(returnShipmentLineNumber; Rec."Return Shipment Line No.") { }
                field(returnReasonCode; Rec."Return Reason Code") { }
                field(subtype; Rec.Subtype) { }
                field(routingNumber; Rec."Routing No.") { }
                field(operationNumber; Rec."Operation No.") { }
                field(workCenterNumber; Rec."Work Center No.") { }
                field(finished; Rec.Finished) { }
                field(prodOrderLineNumber; Rec."Prod. Order Line No.") { }
                field(overheadRate; Rec."Overhead Rate") { }
                field(mpsOrder; Rec."MPS Order") { }
                field(planningFlexibility; Rec."Planning Flexibility") { }
                field(safetyLeadTime; Rec."Safety Lead Time") { }
                field(routingReferenceNumber; Rec."Routing Reference No.") { }
                field(connectwiseId; Rec."ConnectWise id") { }
                field(shortcutDimension1Code; rec."Shortcut Dimension 1 Code") { }
                field(shortcutDimension2Code; rec."Shortcut Dimension 2 Code") { }
                field(shortcutDim3Code; rec."SSCW ShortcutDim3Code") { }
                field(shortcutDim4Code; rec."SSCW ShortcutDim4Code") { }
                field(shortcutDim5Code; rec."SSCW ShortcutDim5Code") { }
                field(shortcutDim6Code; rec."SSCW ShortcutDim6Code") { }
                field(shortcutDim7Code; rec."SSCW ShortcutDim7Code") { }
                field(shortcutDim8Code; rec."SSCW ShortcutDim8Code") { }
            }
        }
    }

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
        PurchaseLine: Record "Purchase Line";
        TransferExtendedText: Codeunit "Transfer Extended Text";
    begin
        if TransferExtendedText.PurchCheckIfAnyExtText(Rec, false) then begin
            if PurchaseLine.Get(Rec."Document Type", Rec."Document No.", Rec."Line No.") then
                Rec.Modify(true)
            else
                Rec.Insert(true);
            Commit();
            TransferExtendedText.InsertPurchExtText(Rec);
            exit(true);
        end;
        exit(false);
    end;
}
#pragma implicitwith restore
