var loop = 0
var loops = 0
var gado_gado = ShoppingCart(nama: "Gado-Gado", jumlah: 0)
var chicken_satay = ShoppingCart(nama: "Chicken Satay", jumlah: 0)
var nasi_padang = ShoppingCart(nama: "Nasi Padang", jumlah: 0)
var mineral_water = ShoppingCart(nama: "Mineral Water", jumlah: 0)
var ice_tea = ShoppingCart(nama: "Ice Tea", jumlah: 0)

while (loop == 0) {
    show("===========================")
    show("   Point of Sales (PoS)")
    show("===========================")
    show("")
    show("Options:")
    show("[1] Buy Food")
    show("[2] Shopping Cart")
    show("[x] Exit")
    show("")
    let opsi = ask("Your choice?")
    
    if opsi == "1" {
        loops = 0
        show("")
        show("Hi, we have 5 Food & Beverage options for you!")
        show("----------------------------------------------")
        show("[F03] Gado-Gado")
        show("[F02] Chicken Satay")
        show("[F01] Nasi Padang")
        show("[B02] Mineral Water")
        show("[B01] Ice Tea")
        show("[Q] Back to Main Menu")
        show("")
        show("Your F&B choice?")
        while loops == 0{
            let menu = ask("Your F&B choice?")
            
            if menu == "F03" {
                beli(by:gado_gado.nama)
                let jumlah = askForNumber("Jumlah: ")
                gado_gado.beli(by: jumlah)
                keranjang()
            } else if menu == "F02" {
                beli(by:chicken_satay.nama)
                let jumlah = askForNumber("Jumlah: ")
                chicken_satay.beli(by: jumlah)
                keranjang()
            } else if menu == "F01" {
                beli(by:nasi_padang.nama)
                let jumlah = askForNumber("Jumlah: ")
                nasi_padang.beli(by: jumlah)
                keranjang()
            } else if menu == "B02" {
                beli(by:mineral_water.nama)
                let jumlah = askForNumber("Jumlah: ")
                mineral_water.beli(by: jumlah)
                keranjang()
            } else if menu == "B01" {
                beli(by:ice_tea.nama)
                let jumlah = askForNumber("Jumlah: ")
                ice_tea.beli(by: jumlah)
                keranjang()
            } else if menu == "Q" {
                loops = 1
            } else if menu == "q" {
                loops = 1
            }else{
                show("Input Salah!")
            }   
        }
    } else if opsi == "2" {
        keranjang()
    }else if opsi == "X"{
        loop = 1
    } else if opsi == "x"{
        loop = 1
    } else {
        show("Input Salah!")
    }
}

func keranjang() {
    var total_keranjang = gado_gado.jumlah + chicken_satay.jumlah + nasi_padang.jumlah + mineral_water.jumlah + ice_tea.jumlah
    if (total_keranjang == 0) {
        show("Keranjang anda kosong!")
    }else{
        print("Shopping Cart: (\(total_keranjang) items.)")
        if gado_gado.jumlah>0 {
            show("\(gado_gado.jumlah) Gado-Gado")
        }
        if chicken_satay.jumlah>0 {
            show("\(chicken_satay.jumlah) Chicken Satay")
        }
        if nasi_padang.jumlah>0 {
            show("\(nasi_padang.jumlah) Nasi Padang")
        }
        if mineral_water.jumlah>0 {
            show("\(mineral_water.jumlah) Mineral Water")
        }
        if ice_tea.jumlah>0 {
            show("\(ice_tea.jumlah) Ice Tea")
        }
    }
}

func beli(by nama: String) {
    show("How many \(nama) do you want to buy?")
}
