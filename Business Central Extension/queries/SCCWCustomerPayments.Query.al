query 64051 CustomerPayments

{
    QueryType = API;
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    APIVersion = 'v2.0';
    EntityName = 'CustomerPaymentsQuery';
    EntitySetName = 'CustomerPaymentsQuery';

    elements
    {
        dataitem(Payment; "Detailed Cust. Ledg. Entry")
        {
            DataItemTableFilter = "Document Type" = filter(Payment);
            column(PaymentEntryNo; "Entry No.") { }
            column(PaymentAmount; "Amount") { }
            column(PaymentCustLedgEntryNo; "Cust. Ledger Entry No.") { }
            column(PaymentPostingDate; "Posting Date") { }
            column(PaymentCreatedAt; SystemCreatedAt) { }
            dataitem(Invoice; "Detailed Cust. Ledg. Entry")
            {
                DataItemLink = "Cust. Ledger Entry No." = Payment."Cust. Ledger Entry No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = "Document Type" = filter(Invoice);
                column(InvoiceEntryNo; "Entry No.") { }
                column(InvoiceAmount; "Amount") { }
                dataitem(TotalPayment; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No." = Payment."Cust. Ledger Entry No.";
                    SqlJoinType = InnerJoin;
                    DataItemTableFilter = "Document Type" = filter(Payment);

                    column(TotalPayments; "Amount") { Method = Sum; }

                    dataitem(Invoice_Header; "Sales Invoice Header")
                    {
                        DataItemLink = "No." = Invoice."Document No.";
                        SqlJoinType = InnerJoin;
                        column(InvoiceNo; "No.") { }
                        column(InvoicePreAssignedNo; "Pre-Assigned No.") { }
                        column(InvoiceExternalDocumentNo; "External Document No.") { }
                        column(InvoiceYourReference; "Your Reference") { }

                    }
                }
            }
        }
    }
}