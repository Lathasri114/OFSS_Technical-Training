public class EventAssociation {
    public static void main(String[] args) {
        Band band = new Band("Rock Band",2,2,1);
        TicketBooking ticket = new TicketBooking(400, 1000);
        ParkingBooking parking = new ParkingBooking(300, 50);
        Refreshments juice = new Refreshments(200);
        VenueSetupCharges venueCharges = new VenueSetupCharges(50000);
        MusicConcert concert = new MusicConcert();
        concert.duration = 3;
        FinOutcome result = concert.calc(ticket, parking, juice, band, venueCharges);
        result.showStats();
    }
}

class Event1 { }

class MusicConcert extends Event1 {
    int duration;
    FinOutcome calc(TicketBooking t, ParkingBooking p, Refreshments r, Band b, VenueSetupCharges v) {
        double payment = (b.guitarist * 1000 + b.pianist * 1000 + b.vocalist * 2000) * duration;
        double refreshmentExp = r.count * 20;
        double exp = payment + refreshmentExp + v.charges;
        double income = t.count * t.price + p.count * p.charges;
        double total = income - exp;
        System.out.println("Tickets booked - " + t.count);
        System.out.println("Concert duration - " + duration + " hours");
        System.out.println("Payment to band - " + payment);
        System.out.println("Venue setup charges - " + v.charges);
        System.out.println("Income - " + income);
        FinOutcome f=new FinOutcome(total);
        return f;
    }
}

class VenueSetupCharges {
    double charges;
    VenueSetupCharges(double charges) {
        this.charges = charges;
    }
}

class FinOutcome {
    double total;
    FinOutcome(double total) {
        this.total = total;
    }
    void showStats() {
        if (total > 0) {
            System.out.println("Profit earned: " + total);
        } else {
            System.out.println("Loss value: " + total);}
    }
}

class Band {
    String bandname;
    int guitarist;
    int pianist;
    int vocalist;
    Band(String name, int g, int p, int v) {
        this.guitarist=g;
        this.pianist=p;
        this.vocalist=v;
        this.bandname = name;
    }
}

class TicketBooking {
    int count;
    double price;
    TicketBooking(int count, double price) {
        this.count = count;
        this.price = price;
    }
}

class ParkingBooking{
    int count;
    double charges;
    ParkingBooking(int count, double charges) {
        this.count = count;
        this.charges = charges;
    }
}
class Refreshments {
    int count;
    Refreshments(int count) {
        this.count = count;}
}
