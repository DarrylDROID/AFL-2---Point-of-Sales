public class ShoppingCart: BuyFood {
    public var nama: String
    public var jumlah: Int
    public init(nama:String, jumlah: Int) {
        self.jumlah = jumlah
        self.nama = nama
    }
    public func beli(by jumlah: Int){
        self.jumlah += jumlah
    }
}
