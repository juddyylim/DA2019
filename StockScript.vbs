Sub stock():
    Dim Ticker As String
    Dim Volume As Long
    Dim Total_Stock_Volume As Long
    Total_Stock_Volume = 0

        For Each ws In Worksheets
        
            Dim Summary_Table_Row As Integer
            Summary_Table_Row = 2
            LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
            
            For i = 2 To LastRow
                If ws.Cells(i + 1, 1).Value <> ws.Cells(i, 1).Value Then
                Total_Stock_Volume = Total_Stock_Volume + ws.Cells(i, 7).Value
                Ticker = ws.Cells(i, 1).Value
            
                ws.Range("I1").Value = "Ticker"
                ws.Range("J1").Value = "Total Stock Volume"
            
                ws.Range("I" & Summary_Table_Row).Value = Ticker
                ws.Range("J" & Summary_Table_Row).Value = Total_Stock_Volume
            
                Summary_Table_Row = Summary_Table_Row + 1
                Total_Stock_Volume = 0
            
                Else
            
                Total_Stock_Volume = Total_Stock_Volume + ws.Cells(i, 7).Value
            
                End If
        
            Next i
            
            Summary_Table_Row = 2
            
        Next ws
            
End Sub
        
        
            